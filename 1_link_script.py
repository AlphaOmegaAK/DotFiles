#!/usr/bin/env python3

import os
from pathlib import Path

REPO_DIR = os.getcwd()               # $HOME/Code/System/DotFiles

HOME_DIR = os.environ['HOME']        # $HOME
CONFIG_DIR = HOME_DIR + "/.config"   # $HOME/.config

HOME_CONFS = REPO_DIR + "/Home_Confs"       # /home/prometheus/Code/System/DotFiles/Home_Confs/
CONFIG_CONFS = REPO_DIR + "/Config_Confs"   # /home/prometheus/Code/System/DotFiles/Config_Confs/

# Directories
ALACRITTY_CONFIG = CONFIG_CONFS + "/alacritty"
DUNST_CONFIG = CONFIG_CONFS + "/dunst"
I3_CONFIG = CONFIG_CONFS + "/i3"
I3_LOCK_CONFIG = CONFIG_CONFS + "/i3lock"
POLYBAR_CONFIG = CONFIG_CONFS + "/polybar"
ROFI_CONFIG = CONFIG_CONFS + "/rofi"
ZATHURA_CONFIG = CONFIG_CONFS + "/zathura"

# Files
PICOM_CONF = CONFIG_CONFS + "/picom.conf"


BACKUP_DIR = HOME_DIR + "/.config/backups"




# Check if Backup_dir exists
    # If it doesn't create it
    # IF it does pass


# """
# Creates directory if it doesn't exist, skips if it does
# """
# def create_directory(path):
#     if check_if_exists(path):
#         if check_if_dir(path):
#             print(f"{path} already exists")
#             print("Skipping...")
#         print(f"{path} is not a directory but exists")
#     else:
#         print(f"{path} doesn't exists")
#         print("Creating...")
#         os.makedirs(path)


# Home Directory Configs
def get_files_from_path(path):
    list = os.listdir(path)

    for i in list:
        if os.path.isdir(path + f"/{i}"):
            list.remove(i)

    print(list)
    return list

def get_directories_from_path(path):
    list = os.listdir(path)

    for i in list:
        # if os.path.isfile(path + f"/{i}") or i != "picom.conf" or i == "Termianls" :
        if i == "Terminals" or i == "picom":
            list.remove(i)

    print("======")
    print(list)
    print("======")
    return list


def link_files(src, dest, list, isDotFile):

    if isDotFile == True:
        for i in list:
            path = Path(dest + "/." + i)

            if not path.is_file():
                os.symlink(src + "/" + i, path)
                # print(dest + "/." + i)
    else :
        for i in list:
            path = Path(dest + "/" + i)

            if not path.is_dir():
                print(i)
                os.symlink(src + "/" + i, path)
        pass






if __name__ == "__main__":
    link_files(HOME_CONFS, HOME_DIR, get_files_from_path(HOME_CONFS), True)
    link_files(CONFIG_CONFS, CONFIG_DIR, get_directories_from_path(CONFIG_CONFS), False)



"""
Check if a directory exists
parameter: directory path
"""
def check_if_exists(path):
    if_exists = os.path.exists(path)
    return if_exists


def check_if_dir(path):
    return os.path.isdir(path)


def check_if_file(path):
    if os.path.isfile(path):
        print(f"{path} is a file")
    return os.path.isfile(path)


def check_if_link(path):
    return os.path.islink(path)
