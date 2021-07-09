alias chmox='chmod -x'
alias ~='cd ~'
alias mv='mv -v'


# Always use color, even when piping (awk, grep)
if gls --color > /dev/null 2>&1; then colorflag="--color"; else colorflag="-G"; fi;
export CLICOLOR_FORCE=1


#Undo Push 
alias undopush="git push -f origin HEAD^:master"

# File Size
alias fs="stat -f \"%z bytes\""
#Disk Space
alias disk_report="df -P -kHl"

# Update + Upgrade

alias update='sudo apt update -y; sudo apt full-upgrade -y'

# Change directory shortcuts
alias ..="cd .."
alias ...="cd ../.."
alias cdcd="cd ~/Code-Directory/"
alias cdpy="cd ~/Code-Directory/Python"
alias cdja="cd ~/Code-Directory/Java"
alias cdjs="cd ~/Code-Directory/Javascript"
alias cdts="cd ~/Code-Directory/TypeScript"
alias cdcpp="cd ~/Code-Directory/C++"
alias cdbs="cd ~/Code-Directory/Scripting"
alias cdbs="cd ~/Code-Directory/Scripting/Scripts-Done"
alias cdcc="cd ~/Code-Directory/Code_Challenges"

alias vimconf="nvim ~/.vim/vimrc"
alias zshconf="nvim ~/.zshrc"
alias fishconf="nvim ~/.config/fish/config.fish"
alias alacconf="nvim ~/.config/alacritty/alacritty.yml"
alias vconf="v ~/.config/nvim"

alias del="rm -rf"
alias v="nvim"

alias py="python3"
alias no="node"
