#!/usr/bin/env python3

import os
import shutil
from os import path
from pathlib import Path
from pathlib import PurePath
from datetime import datetime

HOME = os.environ['HOME']

HOME_DIR_FILES = ['/.gitmux.conf', '/.gitconfig', '/.gitignore', '/.ideavimrc', '/.tasrc', '/.tmux.conf', '/.vimrc', '/.xinitrc', '/.Xresources', '/.zshrc']

CONFIG_DIR = HOME + "/.config"
BACKUP_DIR = CONFIG_DIR + "/backups"




def home_paths(base_dir: str, files_list: list[str]) -> list[str]:
    list = []
    for i in files_list:
        full_path = base_dir + i
        list.append(full_path)

    print(list)
    return list




def getDatetime() -> str:
    dateTime = datetime.now()
    return dateTime.strftime("_%b-%d-%y_%H:%M:%S")




def backup(files_list: list[str]):
    backup_dir = CONFIG_DIR + "/backups"

    for file in files_list:
        exists = os.path.exists(file) # If file/directory exist
        isFile = os.path.isfile(file) # if its a file
        isLink = os.path.islink(file) # if its a symlink

        if exists and isFile and not isLink:
            dest = backup_dir + "/" + os.path.basename(file) + getDatetime()
            shutil.copyfile(file,  dest)

Configs = {
    'home': {
        'base_dir': HOME,
        'configs': [
            '/.gitmux.conf',
            '/.gitconfig',
            '/.gitignore',
            '/.ideavimrc',
            '/.tasrc',
            '/.tmux.conf',
            '/.vimrc',
            '/.xinitrc',
            '/.Xresources',
            '/.zshrc'
        ]
    },
    'config' : {
        'base_dir': CONFIG_DIR,
        'configs': [

        ]
    }

}



if __name__ == "__main__":
    # pass
    # print(path.exists(HOME + "/.zshrc"))
    # print(path.isfile(HOME + "/.zshrc"))
    # print(path.islink(HOME + "/.zshrc"))
    # print(path.isdir(HOME + "/.zshrc"))

    # home_paths(HOME, HOME_DIR_FILES)
    backup(home_paths(HOME, HOME_DIR_FILES))


