#!/bin/sh

# echo $PWD
if [[ -f ~/.oh-my-zsh ]] || [[ -L ~/.oh-my-zsh ]]; then

	ln -s $(pwd)/zshrc.pre-oh-my-zsh ~/.zshrc.pre-oh-my-zsh

else
	ln -s $(pwd)/zshrc.pre-oh-my-zsh ~/.zshrc
fi

