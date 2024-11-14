import os
import re
import shutil
import logging
from pathlib import Path
from datetime import datetime
import argparse
import multiprocessing
from functools import partial

def setup_logging(dry_run=False):
    """Setup logging to both file and console."""
    timestamp = datetime.now().strftime('%Y%m%d_%H%M%S')
    mode = 'dry_run' if dry_run else 'live'
    log_file = f'image_reorganization_{mode}_{timestamp}.log'
    
    formatter = logging.Formatter('%(asctime)s - %(levelname)s - %(message)s')
    
    # Create handlers
    file_handler = logging.FileHandler(log_file)
    file_handler.setFormatter(formatter)
    
    console_handler = logging.StreamHandler()
    console_handler.setFormatter(formatter)
    
    # Configure root logger for multiprocessing compatibility
    root_logger = logging.getLogger()
    root_logger.setLevel(logging.DEBUG)  # Set to DEBUG level
    root_logger.addHandler(file_handler)
    root_logger.addHandler(console_handler)
    
    return root_logger

def find_image_files(root_dir, logger):
    """Find all image files that should be moved."""
    image_extensions = {'.png', '.jpg', '.jpeg', '.gif', '.svg', '.webp', 
                       '.PNG', '.JPG', '.JPEG', '.GIF', '.SVG', '.WEBP'}
    image_files = []
    
    logger.info(f"Searching for images in {root_dir}")
    
    for root, _, files in os.walk(root_dir):
        for file in files:
            if any(file.lower().endswith(ext.lower()) for ext in image_extensions):
                full_path = os.path.join(root, file)
                if should_move_file(full_path):
                    image_files.append(full_path)
                    logger.debug(f"Found image to move: {full_path}")
    
    return image_files

def get_target_path(old_path, target_dir):
    """Generate the target path for a file, maintaining case sensitivity."""
    filename = os.path.basename(old_path)
    return os.path.join(target_dir, filename)

def move_images_to_assets(image_files, target_dir, logger, dry_run=False):
    """Move images to assets/images directory and return old->new path mapping."""
    path_mapping = {}
    skipped_files = []
    
    # First pass: identify potential conflicts
    for old_path in image_files:
        new_path = get_target_path(old_path, target_dir)
        if os.path.exists(new_path):
            if os.path.samefile(old_path, new_path):
                logger.info(f"Skipping identical file: {old_path}")
                skipped_files.append(old_path)
            else:
                logger.warning(f"Conflict detected: {new_path} already exists with different content")
    
    # Remove skipped files from processing
    image_files = [f for f in image_files if f not in skipped_files]
    
    for old_path in image_files:
        new_path = get_target_path(old_path, target_dir)
        
        if dry_run:
            logger.info(f"Would move: {old_path} -> {new_path}")
        else:
            os.makedirs(target_dir, exist_ok=True)
            try:
                logger.info(f"Moving: {old_path} -> {new_path}")
                shutil.move(old_path, new_path)
            except Exception as e:
                logger.error(f"Failed to move {old_path}: {str(e)}")
                continue
        
        # Create mapping with paths as they appear in site files
        old_rel_path = os.path.relpath(old_path).replace('\\', '/')
        if not old_rel_path.startswith('/'):
            old_rel_path = '/' + old_rel_path
            
        new_rel_path = f"/assets/images/{os.path.basename(new_path)}"
        
        path_mapping[old_rel_path] = new_rel_path
        if '/assets/' in old_rel_path:
            simple_path = f"/assets/{os.path.basename(new_path)}"
            path_mapping[simple_path] = new_rel_path
        
        logger.debug(f"Adding mappings:")
        logger.debug(f"  {old_rel_path} -> {new_rel_path}")
        if '/assets/' in old_rel_path:
            logger.debug(f"  {simple_path} -> {new_rel_path}")
    
    return path_mapping

def process_file_batch(files, search_patterns, dry_run=False):
    """Process a batch of files in a separate process."""
    logger = logging.getLogger()
    results = []
    
    # Add pattern to catch /assets/ -> /assets/images/ conversion
    assets_pattern = re.compile(r'/assets/([^/"\'\s\)]+\.(?:png|jpg|jpeg|gif|svg|webp))', re.IGNORECASE)
    
    for file_path in files:
        try:
            with open(file_path, 'r', encoding='utf-8') as f:
                content = f.read()
            
            new_content = content
            file_references = 0
            changes_made = False
            
            # First check for direct /assets/ -> /assets/images/ conversions
            for match in assets_pattern.finditer(content):
                old_ref = match.group(0)  # Full match including /assets/
                filename = match.group(1)  # Just the filename
                new_ref = f'/assets/images/{filename}'
                
                logger.debug(f"\nDirect assets match found in {file_path}:")
                logger.debug(f"Old reference: {old_ref}")
                logger.debug(f"New reference: {new_ref}")
                
                new_content = new_content.replace(old_ref, new_ref)
                file_references += 1
                changes_made = True
            
            # Then process other patterns as before
            for old_path, (patterns, new_path) in search_patterns.items():
                for pattern in patterns:
                    if pattern in new_content:
                        logger.debug(f"\nPattern match found in {file_path}:")
                        logger.debug(f"Pattern: {pattern}")
                        logger.debug(f"Will replace with: {new_path}")
                        new_content = new_content.replace(pattern, new_path)
                        file_references += 1
                        changes_made = True
            
            if changes_made:
                if not dry_run:
                    with open(file_path, 'w', encoding='utf-8') as f:
                        f.write(new_content)
                results.append((file_path, file_references))
        
        except Exception as e:
            logger.error(f"Error processing {file_path}: {str(e)}")
    
    return results

def should_move_file(file_path):
    """Determine if an image file should be moved based on its location."""
    path_parts = Path(file_path).parts
    
    # Don't move files that are already in assets/images
    if 'assets' in path_parts and 'images' in path_parts:
        return False
    
    # Don't move files from documentation folder
    if 'documentation' in path_parts:
        return False
    
    # Don't move files from materials directories
    if 'materials' in path_parts:
        return False
    
    # Don't move files from anyimages directory
    if 'images' in path_parts:
        return False
    
    # Don't move files from any Photos directory
    if 'Photos' in path_parts:
        return False
    
    return True

def should_check_for_references(file_path):
    """Determine if a file should be checked for image references."""
    # Check all content files that might contain image references
    if not file_path.endswith(('.md', '.html', '.htm', '.yml', '.yaml', '.json', '.xml')):
        return False
        
    # Skip compiled/generated files
    if file_path.endswith(('.pdf', '.docx', '.nb.html')):
        return False
    
    # Skip files in materials directories
    if 'materials' in Path(file_path).parts:
        return False
    
    return True

def update_file_references(root_dir, path_mapping, logger, dry_run=False):
    """Update image references in text files."""
    files_updated = 0
    references_updated = 0
    
    if not path_mapping:
        logger.warning("No paths to update - path_mapping is empty!")
        return 0, 0
    
    logger.debug(f"Have {len(path_mapping)} files to move and update:")
    for old_path, new_path in path_mapping.items():
        logger.debug(f"  {old_path} -> {new_path}")
    
    for root, _, files in os.walk(root_dir):
        for file in files:
            file_path = os.path.join(root, file)
            if not should_check_for_references(file_path):
                continue
                
            try:
                with open(file_path, 'r', encoding='utf-8') as f:
                    content = f.read()
                
                new_content = content
                file_changes = 0
                
                # Only look for references to files we're actually moving
                for old_path, new_path in path_mapping.items():
                    if old_path in content:
                        # Ensure we're not doubling up /assets/images/
                        if f"/assets/images{new_path}" in new_content:
                            # If we find a doubled path, fix it first
                            new_content = new_content.replace(f"/assets/images{new_path}", new_path)
                            
                        logger.debug(f"Found '{old_path}' in {file_path}")
                        logger.debug(f"Replacing with '{new_path}' (verified in path_mapping)")
                        new_content = new_content.replace(old_path, new_path)
                        file_changes += 1
                
                if file_changes > 0:
                    if not dry_run:
                        with open(file_path, 'w', encoding='utf-8') as f:
                            f.write(new_content)
                    files_updated += 1
                    references_updated += file_changes
                    logger.info(f"{'Would update' if dry_run else 'Updated'} {file_path} ({file_changes} references)")
                    
            except Exception as e:
                logger.error(f"Error processing {file_path}: {str(e)}")
    
    return files_updated, references_updated

def main():
    parser = argparse.ArgumentParser(description='Reorganize images in repository and update markdown references')
    parser.add_argument('--dry-run', action='store_true', help='Preview changes without making them')
    parser.add_argument('--debug', action='store_true', help='Enable debug logging')
    args = parser.parse_args()
    
    logger = setup_logging(args.dry_run)
    if args.debug:
        logger.setLevel(logging.DEBUG)
    
    repo_root = '.'
    target_dir = os.path.join(repo_root, 'assets', 'images')
    
    mode = "DRY RUN" if args.dry_run else "LIVE"
    logger.info(f"Starting image reorganization in {mode} mode...")
    
    image_files = find_image_files(repo_root, logger)
    logger.info(f"Found {len(image_files)} images to move")
    
    path_mapping = move_images_to_assets(image_files, target_dir, logger, args.dry_run)
    logger.info(f"{'Would move' if args.dry_run else 'Moved'} {len(path_mapping)} images to {target_dir}")
    
    files_updated, references_updated = update_file_references(repo_root, path_mapping, logger, args.dry_run)
    logger.info(f"{'Would update' if args.dry_run else 'Updated'} {references_updated} image references in {files_updated} files")
    
    logger.info("\nImage reorganization complete!")

if __name__ == "__main__":
    main()