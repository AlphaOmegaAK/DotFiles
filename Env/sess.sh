#!/usr/bin/env bash

green=$(tput setaf 2)
purple=$(tput setaf 100)
reset=$(tput sgr0)

# Menu
PS3="${green}Choose Option / Change Session : "
IFS=$'\n' && options=("Create New Session" $(tmux list-session -F "#S" 2>/dev/null))
echo ""
echo -e "\e[0;33m Available Sessions :\e[0m "
echo -e "\e[0;33m--------------------\e[0m"

select opt in "${options[@]}"
do
    case $opt in
        "Create New Session")
            read -p "Enter Session Name : " SESSION_NAME
            read -p "Enter Window Name : " WINDOW_NAME
        # Create the session if doesn't exist
            #if [[ $? -ne 0 ]]; then
                tmux has-session -t=$SESSION_NAME 2> /dev/null
                TMUX='' tmux new-session -d -s "$SESSION_NAME" -n "$WINDOW_NAME"
            #fi
            break;
            ;;
        *)
        # Attach if outside tmux, switch if in tmux
            if [[ -z "$TMUX" ]]; then
                tmux attach-session -t "$opt"
            else
                tmux switch-client -t "$opt"
            fi
            break
            ;;
    esac
done
