#!/bin/bash

DIST=$(tr -s ' \011' '\012' < /etc/issue | head -n 1)

# If not run as sudo user, then run as sudo user
if ! [ $(id -u) = 0 ]; then
	echo "This script needs to run as root"
	# read -s -p "Password : " PW
	sudo ./0_setup.sh
fi

# If pass not a command, install it
if ! [ -x "$(command -v pass)" ]; then
	if [ $DIST == "Arch"]; then
		sudo pacman -S pass
	elif  [ $DIST == "Ubuntu" ]; then
		sudo apt-get install pass
	elif  [ $DIST == "Rhel" ]; then
		sudo dnf install pass
	elif  [ $DIST == "Darwin" ]; then
		brew install pass
	else
		# If not supported os exit
		echo "Currently unsupported OS for install script" >&2
		exit 1
		fi
	else
		# Check if oh my pass is not installed, if not then manually add auto sug + auto comp
		echo "Pass already installed, skipping pass install ..."
		exit 0

		# ZSHCONFIGDIR="~/.config/zsh"
		# if [[ ! -L $ZSHCONFIGDIR ]] || [[ ! -d $ZSHCONFIGDIR ]]; then
		# 	echo "Creating zsh/ in config dir"
		# 	mkdir -p ~/.config/zsh
		# fi


