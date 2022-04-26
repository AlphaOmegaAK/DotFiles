import os

HOME = os.environ['HOME']
WORKSPACE = HOME + "/WORKSPACE"

CODE_DIRS = [
    "/Algos_and_DataStructures",
    "/Command-Line",
    "/Databases",
    "/Docker",
    "/Homelab",
    "/HTML_CSS",
    "/Java",
    "/Javascript_Typescript",
    "/Jenkins",
    "/Lua",
    "/Python",
    "/Rust",
    "/Scratch",
    "/System",
    "/tmp"
]

def mk_dir_structure():
    if not os.path.isdir(WORKSPACE):
        os.makedirs(WORKSPACE)
    else:
        print("Code is already in directory in :" + HOME)

    for i in range(len(CODE_DIRS)):
        dir = WORKSPACE + CODE_DIRS[i]

        if not os.path.isdir(dir):
            print(f"{dir} not in {WORKSPACE}")
            os.makedirs(dir)
            print(f"\tCreating {dir} ...")
        else:
            print(f"Directory {dir} already exists in {WORKSPACE}")
            print(f"\tSkipping ... ")

mk_dir_structure()


