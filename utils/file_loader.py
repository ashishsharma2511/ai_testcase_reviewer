import os

def load_test_file(file_path: str) -> str:
    """
    Reads a .robot or .py file and returns its content as text.
    """
    if not os.path.exists(file_path):
        raise FileNotFoundError(f"File not found: {file_path}")
    with open(file_path, 'r', encoding='utf-8') as f:
        return f.read()