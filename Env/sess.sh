#!/usr/bin/env bash

green=$(tput setaf 2)

# Menu
PS3="${green}Choose Option / Window : "
IFS=$'\n' && options=("New Session" $(tmux list-session -F "#S" 2>/dev/null))
echo ""
echo -e "\e[0;33m Available Sessions :\e[0m "
echo -e "\e[0;33m--------------------\e[0m"

select opt in "${options[@]}"
do
    case $opt in
        "New Session")
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
                tmux-attach -t "$SESSION_NAME"
            else
                tmux switch-client -t "$SESSION_NAME"
            fi
            break
            ;;
    esac
done




# Check if tmux session exists


