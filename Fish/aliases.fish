# #
# ~/.config/fish/aliases.fish
# #

alias v="nvim"
alias cl="clear"
alias chmox="chmod +x"
alias echopath="echo '$PATH' | tr ':' '\n' | nl"

alias notes="nvim ~/Documents/Notes/notes.md"
alias todo="nvim ~/TODO/TODO.md"
alias hln="$HOME/Code/System/DotFiles/Env/bookmarks.sh"
alias hlc="nvim $HOME/Code/Homelab/Homelab_Server_Configs"

alias so="source"

alias joplin="joplin-james-carroll.joplin"
alias intj="intellij-idea-community"

alias i3conf="nvim ~/.config/i3/config"
alias vconf="nvim ~/.vimrc"
alias nvconf="nvim ~/.config/nvim/init.lua"
alias fishconf="nvim ~/.config/fish/config.fish"
alias alacconf="nvim ~/.config/alacritty/alacritty.yml"
alias tmuxconf="nvim ~/.tmux.conf"
alias iscript="cd ~/Code/Systetm/Scripts/"

alias nvdir="cd ~/Code/System/nvim"

alias g="git "
alias ga="git add "
alias gcl="git clone"
alias gclb="git clone --bare "
alias gs="git status -sb"
alias gaa="git add -A"
alias gap="git add --patch"
alias gc="git commit"
alias gcmsg="git commit -m "
alias gb="git branch"
alias gcb="git checkout -b"
alias gsw="git switch"
alias gd="git diff"
alias gpush="git push"
alias gpull="git pull"
alias grim="git rebase -i master"

alias lsd="ls -d .* --color=auto"
alias la="ls -a"
alias lal= "ls -la --block-size=M"

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
alias cdhl="cd ~/Code/Homelab/"
alias cdcc="cd ~/Code/Code_Challenges"
alias cdms="cd ~/Code/Misc"
alias cddl="cd ~/Downloads"

alias intellij="intellij-idea-community"
alias dev="~/Code/System/DotFiles/Env/dev-tmux.sh"

alias lsopenports="sudo lsof -i -P -n | grep LISTEN"
alias netopenports="netstat -lntu"
alias ssopenports="ss -lntu"
alias showports="netstat -tuplen"

alias pwroff="shutdown -h now"
alias pwrcl="shutdown -c"
alias reboot="shutdown -r"
