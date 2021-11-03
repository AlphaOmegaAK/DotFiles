# #
# ~/.config/fish/aliases.fish
# #

alias v="nvim"
alias cl="clear"
alias chmox="chmod +x"
alias echopath="echo '$PATH' | tr ':' '\n' | nl"
alias notes="nvim ~/Documents/Notes/notes.md"

alias so="source "

alias todo="nvim ~/Documents/todo.md"
alias joplin="joplin-james-carroll.joplin"
alias intj="intellij-idea-community"

alias i3conf="nvim ~/.config/i3/config"
alias vconf="nvim ~/.vimrc"
alias nvconf="nvim ~/.config/nvim/init.lua"
alias fishconf="nvim ~/.config/fish/config.fish"
alias alacconf="nvim ~/.config/alacritty/alacritty.yml"
alias tmuxconf="nvim ~/.tmux.conf"
alias iscript="cd ~/Code/Systetm/Scripts/"

alias nvdir="cd ~/Code/System/Nvim-Config"

alias g="git "
alias ga="git add "
alias gc="git clone"
alias gs="git status -sb"
alias gaa="git add -A"
alias gcmsg="git commit -m "
alias gb="git branch"
alias gd="git diff"
alias gpush="git push"
alias gpull="git pull"
alias grim="git rebase -i master"

alias lsd="ls -d .* --color=auto"
alias la="ls -a"

alias rmd="rm -rf"

alias ..="cd .."
alias ..2="cd ../.."
alias ..3="cd ../../.."
alias ..4="cd ../../../../"
alias cdcd="cd ~/Code/"
alias cdtmp="cd ~/Code/tmp"
alias dots="nvim ~/Code/System/DotFiles/"
alias cddf="cd ~/Code/System/DotFiles/"
alias cdpy="cd ~/Code/Python"
alias cdja="cd ~/Code/Java"

alias cdjs="cd ~/Code/Javascript"
alias cdht="cd ~/Code/HTML_CSS"
alias cdds="cd ~/Code/Algos_DataStructs_Masterclass"
alias cdts="cd ~/Code/TypeScript"

alias cdrs="cd ~/Code/Rust"
alias cdcpp="cd ~/Code/C++"
alias cdbs="cd ~/Code/Scripts"
alias cdlu="cd ~/Code/Lua"
alias cdsy="cd ~/Code/System"
alias cdcc="cd ~/Code/Code_Challenges"
alias cdms="cd ~/Code/Misc"
alias cddl="cd ~/Downloads"
alias cdconf="cd ~/.config"

alias intellij="intellij-idea-community"
alias dev="~/Code/System/DotFiles/Env/dev-tmux.sh"

alias lsopenports="sudo lsof -i -P -n | grep LISTEN"
alias netopenports="netstat -lntu"
alias ssopenports="ss -lntu"

alias pwroff="shutdown now"
alias pwrcl="shutdown -c"
alias reboot="shutdown -r"
