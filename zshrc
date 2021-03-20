
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  #source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

#ZSH_THEME="robbyrussell"
#ZSH_THEME="powerlevel10k/powerlevel10k"
ZSH_THEME="spaceship"


# Uncomment the following line to enable command auto-correction.
ENABLE_CORRECTION="true"

plugins=(
colored-man-pages
git
)

source $ZSH/oh-my-zsh.sh

#------------------- User configuration ------------------

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
 export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='nvim'
# fi

#
#-------------------- ALIAS' --------------
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
alias ..="cd .. && ls"
alias ...="cd ../.. && ls"
alias cdcd="cd ~/Code-Directory/ ; ls"
alias cdd="cd ~/Downloads/ && ls"
alias cdpy="cd ~/Code-Directory/Python && ls"
alias cdja="cd ~/Code-Directory/Java && ls"
alias cdjs="cd ~/Code-Directory/Javascript && ls"
alias cdts="cd ~/Code-Directory/TypeScript && ls"
alias cdcpp="cd ~/Code-Directory/C++ && ls"
alias cdbs="cd ~/Code-Directory/Scripting && ls"
alias cddf="cd ~/Code-Directory/DotFiles && ls"
alias cdcc="cd ~/Code-Directory/Code_Challenges && ls"
alias cddl="cd ~/Downloads && ls"

alias la="ls -a"
alias lsd="ls -d .*"
#alias laa='ls -a | grep "^\."'
# ----- Config Alias'
alias vimconf="neovim ~/.vim/vimrc"
alias zshconf="neovim ~/.zshrc"
alias alacconf="neovim ~/.config/alacritty/alacritty.yml"
alias vconf="neovim ~/.config/nvim"
alias i3conf="neovim ~/.config/i3/config" 
alias tmuxconf="neovim ~/.tmux.conf"

alias del="rm -rf"
alias v="/usr/local/bin/neovim"



alias py="python3"
alias no="node"

# ----- Window Manager Alias's ----
alias configwm="sudo vim ~/.config/awesome/rc.lua"
export PATH=/opt/firefox/firefox:$PATH

# ----- Function -----
openup ()
{
  if [ -f $1 ] ; then
    case $1 in
      *.tar.bz2)   tar xjf $1   ;;
      *.tar.gz)    tar xzf $1   ;;
      *.tar.xz)    tar xJf $1   ;;
      *.bz2)       bunzip2 $1   ;;
      *.rar)       unrar x $1   ;;
      *.gz)        gunzip $1    ;;
      *.tar)       tar xf $1    ;;
      *.tbz2)      tar xjf $1   ;;
      *.tgz)       tar xzf $1   ;;
      *.zip)       unzip $1     ;;
      *.Z)         uncompress $1;;
      *.7z)        7z x $1      ;;
      *)           echo "'$1' cannot be extracted with openup()" ;;
    esac
  else
    echo "'$1' not a valid file"
  fi
}
#------ ----- ----- -----
mkcd ()
{
    mkdir -p -- "$1" &&
      cd -P -- "$1"
}
#----- ----- ----- -----
#ls after cd
function cdls 
{
    if [ -z "$1" ]; then
        builtin cd
    else
        builtin cd "$1"
    fi
    if [ $? -eq 0 ]; then
        ls
    fi
}

# ----- Virtual Enviroments Settings -----
export WORKON_HOME=$HOME/.virtualenvs
VIRTUALENVWRAPPER_PYTHON=/usr/bin/python3
#. /usr/local/bin/virtualenvwrapper.sh
#




# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

source $HOME/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('$HOME/anaconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "$HOME/anaconda3/etc/profile.d/conda.sh" ]; then
        . "$HOME/anaconda3/etc/profile.d/conda.sh"
    else
        export PATH="$HOME/anaconda3/bin:$PATH"
    fi
fi
unset __conda_setup



source "/home/alpha/.oh-my-zsh/custom/themes/spaceship.zsh-theme"
