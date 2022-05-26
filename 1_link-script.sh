#!/usr/bin/env bash

ln -s $(pwd)/Alacritty/alacritty.yml ~/.config/alacritty/alacritty.yml ;

ln -s $(pwd)/Fish/config.fish ~/.config/fish/config.fish ;
ln -s $(pwd)/Fish/functions/cd.fish ~/.config/fish/functions/cd.fish ;
ln -s $(pwd)/Fish/functions/gitlog.fish ~/.config/fish/functions/gitlog.fish ;
ln -s $(pwd)/Fish/aliases.fish ~/.config/fish/aliases.fish ;

ln -s $(pwd)/I3/i3_config ~/.config/i3/config ;	
ln -s $(pwd)/I3/i3exit ~/config/i3/i3exit ;	
ln -s $(pwd)/I3/i3_status_config ~/.config/i3status/config ;
ln -s $(pwd)/I3/polybar/launch.sh ~/.config/polybar/launch.sh ;
ln -s $(pwd)/I3/polybar/config ~/.config/polybar/config ;
ln -s $(pwd)/I3/polybar/scripts ~/.config/polybar/scripts ;

ln -s $(pwd)/rofi ~/.config/rofi ;
ln -s $(pwd)/I3/dunst ~/.config/dunst

rm ~/.tmux.conf
ln -s $(pwd)/tmux.conf ~/.tmux.conf ;	
ln -s $(pwd)/gitmux.conf ~/.gitmux.conf ;	
ln -s $(pwd)/global_git_ignore ~/.global_git_ignore ;
git config --global core.excludesfile ~/.global_git_ignore ;
ln -s $(pwd)gitconfig ~/.gitconfig ;

ln -s $(pwd)/taskrc ~/.taskrc ;	


