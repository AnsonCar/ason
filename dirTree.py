import os
import sys

def dirTree(path, exclude_list=None, max_depth=None, current_depth=0, isNext=False):
    # 获取给定路径下的文件和目录列表
    files = os.listdir(path)
    # 遍历列表
    for i, file in enumerate(files):
        # 排除在exclude_list中的文件或目录
        if exclude_list is not None and file in exclude_list:
            continue
        # # 判断是否为最后一项
        if isNext:
            is_last = len(files) - 1 == i
        else:
            is_last = len(files) - 2 == i
        # # 打印前缀
        prefix = "└── " if is_last else "├── "
        # # 打印文件或目录名
        print("    " * current_depth + prefix + file)
        # # 如果是目录且未超过最大深度
        if os.path.isdir(os.path.join(path, file)) and (max_depth is None or current_depth < max_depth):
            # 递归调用函数，将子目录作为路径，深度增加
            dirTree(os.path.join(path, file), exclude_list, max_depth, current_depth + 1, isNext=True)

# 获取命令行参数
argv = sys.argv
exclude_list = [".DS_Store", ".git", "node_modules"]

print("*")
if len(argv) > 2:
    dirTree(argv[1], exclude_list=exclude_list, max_depth=int(argv[2]) - 1)
else:
    dirTree(argv[1], exclude_list=exclude_list)