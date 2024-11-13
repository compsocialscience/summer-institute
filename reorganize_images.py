import os
import re
import shutil
import logging
from pathlib import Path
from datetime import datetime
import argparse

def setup_logging(dry_run=False):
    """Setup logging to both file and console."""
    timestamp = datetime.now().strftime('%Y%m%d_%H%M%S')
    mode = 'dry_run' if dry_run else 'live'
    log_file = f'image_reorganization_{mode}_{timestamp}.log'
    
    # Create formatter
    formatter = logging.Formatter('%(asctime)s - %(levelname)s - %(message)s')
    
    # Setup file handler
    file_handler = logging.FileHandler(log_file)
    file_handler.setFormatter(formatter)
    
    # Setup console handler
    console_handler = logging.StreamHandler()
    console_handler.setFormatter(formatter)
    
    # Setup logger
    logger = logging.getLogger('image_reorganizer')
    logger.setLevel(logging.INFO)
    logger.addHandler(file_handler)
    logger.addHandler(console_handler)
    
    return logger

def find_image_files(root_dir, logger):
    """Find all image files in the repository (case-insensitive)."""
    image_extensions = {'.png', '.jpg', '.jpeg', '.gif', '.svg', '.webp', '.JPG', '.JPEG', '.PNG', '.GIF', '.SVG', '.WEBP'}
    image_files = []
    
    logger.info(f"Searching for images in {root_dir}")
    
    for root, _, files in os.walk(root_dir):
        for file in files:
            if any(file.endswith(ext) for ext in image_extensions):
                # Skip files already in assets/images
                if not ('assets/images' in Path(root).parts or 'assets\\images' in Path(root).parts):
                    full_path = os.path.join(root, file)
                    image_files.append(full_path)
                    logger.debug(f"Found image: {full_path}")
    
    return image_files

def move_images_to_assets(image_files, target_dir, logger, dry_run=False):
    """Move images to assets/images directory and return old->new path mapping."""
    path_mapping = {}
    
    for old_path in image_files:
        filename = os.path.basename(old_path)
        new_path = os.path.join(target_dir, filename)
        
        # Handle duplicate filenames
        counter = 1
        while os.path.exists(new_path) or new_path in [v for v in path_mapping.values()]:
            base, ext = os.path.splitext(filename)
            new_path = os.path.join(target_dir, f"{base}_{counter}{ext}")
            counter += 1
        
        if dry_run:
            logger.info(f"Would move: {old_path} -> {new_path}")
        else:
            # Create target directory if it doesn't exist
            os.makedirs(target_dir, exist_ok=True)
            
            # Move the file
            logger.info(f"Moving: {old_path} -> {new_path}")
            shutil.move(old_path, new_path)
        
        # Store the relative paths for updating references
        old_rel_path = os.path.relpath(old_path)
        new_rel_path = os.path.relpath(new_path)
        path_mapping[old_rel_path] = new_rel_path
        
    return path_mapping

def update_markdown_files(root_dir, path_mapping, logger, dry_run=False):
    """Update image references in markdown files."""
    md_files_updated = 0
    references_updated = 0
    
    for root, _, files in os.walk(root_dir):
        for file in files:
            if file.endswith('.md'):
                file_path = os.path.join(root, file)
                try:
                    with open(file_path, 'r', encoding='utf-8') as f:
                        content = f.read()
                    
                    new_content = content
                    file_references = 0
                    
                    for old_path, new_path in path_mapping.items():
                        # Handle different markdown image syntaxes (case-insensitive)
                        patterns = [
                            rf'!\[([^\]]*)\]\({re.escape(old_path)}\)',  # ![alt](path)
                            rf'<img[^>]*src=[\'"]{re.escape(old_path)}[\'"][^>]*>',  # <img src="path">
                            # Case-insensitive variations
                            rf'!\[([^\]]*)\]\({re.escape(old_path.lower())}\)',
                            rf'!\[([^\]]*)\]\({re.escape(old_path.upper())}\)',
                            rf'<img[^>]*src=[\'"]{re.escape(old_path.lower())}[\'"][^>]*>',
                            rf'<img[^>]*src=[\'"]{re.escape(old_path.upper())}[\'"][^>]*>'
                        ]
                        
                        for pattern in patterns:
                            matches = re.findall(pattern, new_content, re.IGNORECASE)
                            if matches:
                                if '![' in pattern:
                                    new_content = re.sub(
                                        pattern,
                                        rf'![\1]({new_path})',
                                        new_content,
                                        flags=re.IGNORECASE
                                    )
                                else:
                                    new_content = re.sub(
                                        rf'src=[\'"]{re.escape(old_path)}[\'"]',
                                        f'src="{new_path}"',
                                        new_content,
                                        flags=re.IGNORECASE
                                    )
                                file_references += len(matches)
                    
                    if new_content != content:
                        if dry_run:
                            logger.info(f"Would update {file_path} ({file_references} references)")
                        else:
                            with open(file_path, 'w', encoding='utf-8') as f:
                                f.write(new_content)
                            logger.info(f"Updated {file_path} ({file_references} references)")
                        md_files_updated += 1
                        references_updated += file_references
                
                except Exception as e:
                    logger.error(f"Error processing {file_path}: {str(e)}")
    
    return md_files_updated, references_updated

def main():
    # Parse command line arguments
    parser = argparse.ArgumentParser(description='Reorganize images in repository and update markdown references')
    parser.add_argument('--dry-run', action='store_true', help='Preview changes without making them')
    args = parser.parse_args()
    
    # Setup logging
    logger = setup_logging(args.dry_run)
    
    # Configuration
    repo_root = '.'  # Current directory
    target_dir = os.path.join(repo_root, 'assets', 'images')
    
    mode = "DRY RUN" if args.dry_run else "LIVE"
    logger.info(f"Starting image reorganization in {mode} mode...")
    
    # Find all image files
    image_files = find_image_files(repo_root, logger)
    logger.info(f"Found {len(image_files)} images to move")
    
    # Move images and get path mapping
    path_mapping = move_images_to_assets(image_files, target_dir, logger, args.dry_run)
    logger.info(f"{'Would move' if args.dry_run else 'Moved'} {len(path_mapping)} images to {target_dir}")
    
    # Update markdown files
    md_files_updated, references_updated = update_markdown_files(repo_root, path_mapping, logger, args.dry_run)
    logger.info(f"{'Would update' if args.dry_run else 'Updated'} {references_updated} image references in {md_files_updated} markdown files")
    
    logger.info("\nImage reorganization complete!")
    logger.info("\nNext steps:")
    logger.info("1. Review the log file for details of all changes")
    if args.dry_run:
        logger.info("2. If the previewed changes look correct, run again without --dry-run")
    else:
        logger.info("2. Check that all images were moved correctly")
        logger.info("3. Verify markdown files still render properly")
        logger.info("4. Test the website locally if possible")

if __name__ == "__main__":
    main()