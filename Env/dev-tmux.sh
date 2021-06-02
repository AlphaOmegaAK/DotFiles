#! /bin/sh
SESSION="$1"

WINDOW1="Code"
WINDOW2="Terminal"
WINDOW3="Database"
WINDOW4="Server"
WINDOW5="Debug-Test"

tmux new-session -d -s $SESSION -n $WINDOW1 \;      \
    send-keys -t $SESSION:$WINDOW1 "clear && ls" Enter\; \
    new-window -n $WINDOW2 -t $SESSION \;            \
    send-keys -t $SESSION:$WINDOW2 "clear" Enter\; \
    new-window -n $WINDOW3 -t $SESSION \;            \
    send-keys -t $SESSION:$WINDOW3 "clear" Enter\; \
    new-window -n $WINDOW4 -t $SESSION \;            \
    send-keys -t $SESSION:$WINDOW4 "clear" Enter\; \
    new-window -n $WINDOW5 -t $SESSION \;            \
    send-keys -t $SESSION:$WINDOW5 "clear" Enter\; \

