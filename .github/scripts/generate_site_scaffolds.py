import pandas as pd
from pathlib import Path
import shutil
import re
import os
import sys

def debug_print(message):
    if os.getenv('DEBUG') == 'true':
        print(f"DEBUG: {message}")

def validate_csv(df):
    required_columns = {'YEAR', 'NAME'}
    missing_columns = required_columns - set(df.columns)
    if missing_columns:
        raise ValueError(f"Missing required columns: {missing_columns}")
    debug_print(f"Found columns: {list(df.columns)}")
    debug_print(f"Number of rows: {len(df)}")

def clean_path_name(name):
    # ... (previous clean_path_name code) ...
    debug_print(f"Cleaned path name: {name} -> {path_name}")
    return path_name

def find_most_recent_image(root_dir, current_year, location_name):
    debug_print(f"Searching for previous image for {location_name} before year {current_year}")
    # ... (previous find_most_recent_image code) ...

def generate_scaffolds(csv_path):
    try:
        print("Starting scaffold generation...")
        debug_print(f"Working directory: {os.getcwd()}")
        debug_print(f"Directory contents: {os.listdir()}")
        
        df = pd.read_csv(csv_path)
        print(f"Read CSV file with {len(df)} rows")
        validate_csv(df)
        
        root_dir = Path.cwd()
        template_dir = root_dir / '.20XX_template'
        data_template_dir = root_dir / '_data' / '.template'
        
        debug_print(f"Template directory exists: {template_dir.exists()}")
        debug_print(f"Data template directory exists: {data_template_dir.exists()}")
        
        if not template_dir.exists() or not data_template_dir.exists():
            raise FileNotFoundError(f"Template directories not found. Looked in: {template_dir}, {data_template_dir}")
        
        processed_years = set()
        created_files = []
        
        for idx, row in df.iterrows():
            try:
                year = str(row['YEAR'])
                name = str(row['NAME'])
                print(f"\nProcessing row {idx + 1}: {year} - {name}")
                
                path_name = clean_path_name(name)
                
                replacements = {col: str(value) for col, value in row.items()}
                debug_print(f"Replacements: {replacements}")
                
                year_dir = root_dir / year
                data_year_dir = root_dir / '_data' / year
                
                # Create directories
                for dir_path in [year_dir, data_year_dir]:
                    if not dir_path.exists():
                        print(f"Creating directory: {dir_path}")
                        dir_path.mkdir(parents=True, exist_ok=True)
                        created_files.append(str(dir_path))
                
                target_dir = year_dir / path_name
                data_target_dir = root_dir / '_data' / year / path_name
                
                if target_dir.exists() or data_target_dir.exists():
                    print(f"Skipping {year}/{path_name} - directory already exists")
                    continue
                
                print(f"Creating scaffolds for {year}/{path_name}")
                debug_print(f"Copying from {template_dir / '[[NAME]]'} to {target_dir}")
                debug_print(f"Copying from {data_template_dir / '[[NAME]]'} to {data_target_dir}")
                
                shutil.copytree(template_dir / '[[NAME]]', target_dir)
                shutil.copytree(data_template_dir / '[[NAME]]', data_target_dir)
                created_files.extend([str(target_dir), str(data_target_dir)])
                
                for dir_path in [target_dir, data_target_dir]:
                    for file_path in dir_path.rglob('*'):
                        if file_path.is_file() and file_path.suffix in ['.md', '.yml']:
                            print(f"Processing file: {file_path}")
                            replace_tags_in_file(file_path, replacements)
                            created_files.append(str(file_path))
            
            except Exception as e:
                print(f"Error processing row {idx + 1}: {e}", file=sys.stderr)
                continue
        
        if created_files:
            print("\nCreated the following files/directories:")
            for file in created_files:
                print(f"  {file}")
        else:
            print("\nNo new files or directories were created.")
    
    except Exception as e:
        print(f"Fatal error: {e}", file=sys.stderr)
        raise

if __name__ == "__main__":    
    generate_scaffolds('sites.csv')
