#!/bin/bash


FILES=(~/.bashrc, ~/.zshrc, ~/.gitconfig, ~/.gitignore, ~/.tmux.conf, ~/.config/alacritty/alacritty.yml, )


for file in $FILES 
do
    # Delete file
    # Print which file delete
    echo "File : "$file
done



# Print number of files in list of FILES
echo ${#FILES[@]}



#echo "Do you wish to install this program?"
#select yn in "Yes" "No"; do
    #case $yn in
        #Yes ) make install; break;;
        #No ) exit;;
    #esac
#done
