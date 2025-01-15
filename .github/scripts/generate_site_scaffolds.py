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
    accent_map = {
        'ü': 'u', 'ä': 'a', 'ö': 'o',
        'é': 'e', 'è': 'e', 'ê': 'e', 'ë': 'e',
        'á': 'a', 'à': 'a', 'â': 'a', 'ã': 'a',
        'í': 'i', 'ì': 'i', 'î': 'i', 'ï': 'i',
        'ó': 'o', 'ò': 'o', 'ô': 'o', 'õ': 'o',
        'ú': 'u', 'ù': 'u', 'û': 'u',
        'ý': 'y', 'ÿ': 'y',
        'ñ': 'n', 'ç': 'c'
    }
    
    path_name = str(name).lower()
    for accent, replacement in accent_map.items():
        path_name = path_name.replace(accent, replacement)
    return re.sub(r'[^a-z0-9]', '-', path_name)

def find_most_recent_image(root_dir, current_year, location_name):
    """Find the most recent header image for a given location from previous years."""
    root_dir = root_dir.parent.parent
    
    current_year = int(current_year)
    
    for year in range(current_year - 1, 2016, -1):
        data_image = root_dir / '_data' / str(year) / location_name / 'location.yml'
        site_image = root_dir / str(year) / location_name / 'index.md'
        
        for check_path in [data_image, site_image]:
            if check_path.exists():
                try:
                    with open(check_path, 'r', encoding='utf-8') as f:
                        content = f.read()
                        image_match = re.search(r'^image:\s*(.+)$', content, re.MULTILINE)
                        if image_match and 'tbd.jpg' not in image_match.group(1):
                            return image_match.group(1).strip()
                except Exception as e:
                    print(f"Warning: Error reading {check_path}: {e}")
    
    return '/assets/images/tbd.jpg'

def replace_tags_in_file(file_path, replacements):
    root_dir = Path.cwd().parent.parent
    
    try:
        with open(file_path, 'r', encoding='utf-8') as f:
            content = f.read()
        
        path_name = clean_path_name(replacements['NAME'])
        previous_image = find_most_recent_image(root_dir, replacements['YEAR'], path_name)
        
        is_yaml = file_path.suffix == '.yml'
        
        if is_yaml:
            if file_path.name == 'location.yml':
                content = re.sub(r'^image:\s*.*$', f'image: {previous_image}', 
                               content, flags=re.MULTILINE)
                
            if file_path.name == 'hero.yml':
                content = re.sub(r'^location:\s*.*$', f'location: SICSS-{replacements["NAME"]}', 
                               content, flags=re.MULTILINE)
                
                for tag, value in replacements.items():
                    if tag != 'NAME':
                        pattern = f'\\[\\[{tag}\\]\\]'
                        content = re.sub(pattern, str(value), content, flags=re.IGNORECASE)
            else:
                content = re.sub(r'^link:\s*.*$', f'link: {path_name}', content, flags=re.MULTILINE)
                
                for tag, value in replacements.items():
                    pattern = f'\\[\\[{tag}\\]\\]'
                    
                    if tag == 'NAME':
                        content = re.sub(r'^title:\s*.*$', f'title: {value}', content, flags=re.MULTILINE)
                        content = re.sub(pattern, path_name, content, flags=re.IGNORECASE)
                    else:
                        content = re.sub(pattern, str(value), content, flags=re.IGNORECASE)
        else:
            if file_path.name == 'index.md':
                content = re.sub(r'^image:\s*.*$', f'image: {previous_image}', 
                               content, flags=re.MULTILINE)
            
            yaml_pattern = r'^---\n.*?---'
            def yaml_replacer(match):
                yaml_content = match.group(0)
                yaml_content = re.sub(r'^title:\s*.*$', f'title: {replacements["NAME"]}', 
                                    yaml_content, flags=re.MULTILINE)
                yaml_content = re.sub(r'^partner_site:\s*.*$', f'partner_site: {path_name}', 
                                    yaml_content, flags=re.MULTILINE)
                yaml_content = re.sub(r'\[\[NAME\]\]', path_name, yaml_content, flags=re.IGNORECASE)
                return yaml_content
            
            content = re.sub(yaml_pattern, yaml_replacer, content, flags=re.DOTALL)
            
            for tag, value in replacements.items():
                pattern = f'\\[\\[{tag}\\]\\]'
                content = re.sub(pattern, str(value), content, flags=re.IGNORECASE)
        
        with open(file_path, 'w', encoding='utf-8') as f:
            f.write(content)
    except Exception as e:
        print(f"Warning: Error processing {file_path}: {e}")

def generate_scaffolds(csv_path):
    try:
        print("Starting scaffold generation...")
        debug_print(f"Working directory: {os.getcwd()}")
        
        print(f"Reading CSV file: {csv_path}")
        df = pd.read_csv(csv_path, header=0)
        debug_print(f"CSV columns: {df.columns.tolist()}")
        print(f"Read CSV file with {len(df)} rows")
        validate_csv(df)
        
        root_dir = Path(os.environ.get('GITHUB_WORKSPACE', Path.cwd()))
        template_dir = root_dir / '.20XX_template'
        data_template_dir = root_dir / '_data' / '.template'
        
        debug_print(f"Looking for templates in:")
        debug_print(f"  - {template_dir}")
        debug_print(f"  - {data_template_dir}")
        
        if not template_dir.exists() or not data_template_dir.exists():
            raise FileNotFoundError(
                "Template directories not found. Please ensure both exist:\n"
                f"  - {template_dir}\n"
                f"  - {data_template_dir}"
            )
        
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
                data_target_dir = data_year_dir / path_name
                
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
    try:
        csv_path = sys.argv[1] if len(sys.argv) > 1 else 'sites.csv'
        generate_scaffolds(csv_path)
    except Exception as e:
        print(f"Error: {e}", file=sys.stderr)
        sys.exit(1)
