# DotFiles


## SYMLINK example using .gitconf

$ cd dotfiles/ 
#### Be sure to adjust the user to your user, which you can find in the path or by running the following:

$ echo $USER
(Your User)

$ pwd
/Users/(Your User)/(Parent folder of dotfiles)/dotfiles

# Be sure to use an absolute path
$ ln -nfs /Users/(YourUser)/(Parent folder of dotfiles)/.gitconfig /User/(Your User)/.gitconfig

- "-s" creates a symbolic link instead of a hard link
- "-f" continues with other symlinking when an error occurs
- "-n" avoids symlinking a symlink


## List of DotFiles and their required locations/symlinks

===== ~/* ===== 
<FILE>                <LOCATION>
tmux.conf        >    ~/.tmux.conf
taskrc           >    ~/.taskrc


===== I3/* ===== 
<FILE>               <LOCATION>
i3_config        >   ~/.config/i3/config
i3_status.conf   >   ~/.config/i3status/config
i3exit           >   ~/.config/i3/i3exit  
i3lock/          >   ~/.config/i3lock/
picom.conf>      >   ~/.config/picom.conf


===== fish/* =====
config.fish      >   ~/.config/fish/config.fish
fish_variables   >   ~/.config/fish/fish_variables
aliases/fish     >   ~/.config/fish/aliases.fish


===== Alacritty/* =====
alacritty.yml    >   ~/.config/alacritty/alacritty.yml
