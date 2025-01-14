import pandas as pd
from pathlib import Path
import shutil
import re

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
    try:
        root_dir = Path.cwd()
        
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
        df = pd.read_csv(csv_path)
        
        root_dir = Path.cwd()
        template_dir = root_dir / '.20XX_template'
        data_template_dir = root_dir / '_data' / '.template'
        
        if not template_dir.exists() or not data_template_dir.exists():
            raise FileNotFoundError("Template directories not found")
        
        processed_years = set()
        
        for _, row in df.iterrows():
            try:
                year = str(row['YEAR'])
                name = str(row['NAME'])
                path_name = clean_path_name(name)
                
                replacements = {col: str(value) for col, value in row.items()}
                
                year_dir = root_dir / year
                year_dir.mkdir(exist_ok=True)
                (root_dir / '_data' / year).mkdir(parents=True, exist_ok=True)
                
                if year not in processed_years:
                    index_source = template_dir / 'index.md'
                    index_target = year_dir / 'index.md'
                    shutil.copy2(index_source, index_target)
                    replace_tags_in_file(index_target, replacements)
                    processed_years.add(year)
                
                target_dir = year_dir / path_name
                data_target_dir = root_dir / '_data' / year / path_name
                
                if target_dir.exists() or data_target_dir.exists():
                    print(f"Warning: Skipping {year}/{path_name} - directory already exists")
                    continue
                    
                shutil.copytree(template_dir / '[[NAME]]', target_dir)
                shutil.copytree(data_template_dir / '[[NAME]]', data_target_dir)
                
                for dir_path in [target_dir, data_target_dir]:
                    for file_path in dir_path.rglob('*'):
                        if file_path.is_file() and file_path.suffix in ['.md', '.yml']:
                            replace_tags_in_file(file_path, replacements)
            
            except Exception as e:
                print(f"Warning: Error processing row {row}: {e}")
                continue
    
    except Exception as e:
        print(f"Error: {e}")
        raise

if __name__ == "__main__":    
    generate_scaffolds('sites.csv')
