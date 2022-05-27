#!/bin/bash

# Gets linux distro
DIST=$(tr -s ' \011' '\012' < /etc/issue | head -n 1)

# If not run as sudo user, then run as sudo user
if ! [ $(id -u) = 0 ]; then
	echo "This script needs to run as root"
	# read -s -p "Password : " PW
	sudo ./0_zsh_install_setup.sh
fi

# If zsh not a command, install it
if ! [ -x "$(command -v zsh)" ]; then
	if [ $DIST == "Arch"]; then
		sudo pacman -S zsh
	elif  [ $DIST == "Ubuntu" ]; then
		sudo apt-get install zsh -y
	elif  [ $DIST == "Rhel" ]; then
		sudo dnf install zsh
	else
		# If not supported os exit
		echo "Currently unsupported OS" >&2
		exit 1
	fi
else
	# Oh-my-zsh
	# Check if oh my zsh is not installed, if not then manually add auto sug + auto comp
	echo "ZSH already installed, skipping ZSH install ..."

	ZSHCONFIGDIR="~/.config/zsh"
	if [[ ! -L $ZSHCONFIGDIR ]] || [[ ! -d $ZSHCONFIGDIR ]]; then
		echo "Creating zsh/ in config dir"
		mkdir -p ~/.config/zsh
	fi

	OHMYZSH="$HOME/.oh-my-zsh/"
	if [[ ! -L $OHMYZSH ]] || [[ ! -d $OHMYZSH ]]; then
		echo "Oh-My-Zsh not installed, manually setting up auto suggestions and completion"

		# Install auto suggestions
		git clone -- depth 1 -- https://github.com/zsh-users/zsh-autosuggestions ~/config/zsh/zsh-autosuggestions
		# Add auto suggestions to zshrc
		echo "Adding Auto Suggestions to zshrc"
		echo "source ~/config/zsh/zsh-autosuggestions/zsh-autosuggestions.zsh" | tee -a  ~/.zshrc

		# Install auto complete
		git clone --depth 1 -- https://github.com/marlonrichert/zsh-autocomplete.git ~/config/zsh/zsh-autocomplete
		echo "Adding Autocomplete to zshrc"
		echo "source ~/config/zsh/zsh-autocomplete/zsh-autocomplete.plugin.zsh" | tee -a ~/.zshrc

		# Install syntax highlighting
		git clone --depth 1 -- git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ~/config/zsh/zsh-syntax-highlighting
		echo "Adding Syntax Highlighting to  zshrc"
		echo "source ~/config/zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh" | tee -a ~/.zshrc

		exit 0
	fi
fi

