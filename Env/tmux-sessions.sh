#!/usr/bin/env bash

# Abort if already inside a tmux session
#[ "$TMUX" == "" ] || exit 0

# Menu: choose which workspace to open
PS3="Please choose session: "
# Shellcheck disable=SC2207
IFS=$'\n' && options=("New session" $(tmux list-sessions -F "#S" 2>/dev/null))
echo 'Available sessions'
echo "------------------"
echo " "

select opt in "${options[@]}"
do
    case $opt in
        "New Session")
            read -rp "Enter new session name : " SESSION_NAME
            #tmux has-session -t=$SESSION_NAME 2> /dev/null
            tmux new -s "$SESSION_NAME" -d
            break;
            ;;
        *)
            #tmux attach-session -t "$opt"
            break
            ;;
    esac
done


