import os
import sys

def dirTree(path, exclude_list=None, max_depth=None, current_depth=0, is_last=False):
    # Get the list of files and directories in the given path
    files = os.listdir(path)
    # Loop through the list
    for i, file in enumerate(files):
        # Exclude files or directories in exclude_list
        if exclude_list is not None and file in exclude_list:
            continue
        # If the file is a directory and we haven't exceeded the max depth
        if os.path.isdir(os.path.join(path, file)) and (max_depth is None or current_depth < max_depth):
            # Print the directory name with the appropriate prefix
            prefix = "└── " if (i == len(files) - 1 and is_last) else "├── "
            print("    " * current_depth + prefix + file)
            # Recursively call the function with the subdirectory as the path and increased depth
            is_last_subdir = i == len(files) - 1
            dirTree(os.path.join(path, file), exclude_list, max_depth, current_depth + 1, is_last_subdir)
        # If the file is a file or we've exceeded the max depth
        else:
            # Print the file name with the appropriate prefix
            prefix = "└── " if (i == len(files) - 1 and is_last) else "├── "
            print("    " * current_depth + prefix + file)

# Get the command-line arguments
argv = sys.argv
exclude_list = [".DS_Store", ".git", "node_modules"]

if len(argv) > 2:
    dirTree(argv[1], exclude_list=exclude_list, max_depth=int(argv[2]) - 1, is_last=True)
else:
    dirTree(argv[1], exclude_list=exclude_list, is_last=True)
    
# │
# ├── LICENSE 開源證明
# ├── README.md 項目介紹
# ├── docs 文檔
# │   ├── Logo
# │   └── changelog.md 開發日誌
# │
# ├── linux_init
# ├── nodejs
# ├── py_init
# └── vuePress_init