#! /bin/sh
SESSION="Development"

tmux new-session -d -s $SESSION -n "Code" \;    \
    new-window -n "Output" -t $SESSION\;        \
    new-window -n "Server" -t $SESSION\;        \





    





# ================= SCRAP =====================
#tmux new-session -d -s $SESSION -n "Code" -n "Test"
#tmux new-window -n "Output" -t $SESSION
#tmux new-window -n "Server" -t $SESSION

#tmux new-session -d -s $SESSION\;   \
#    new-window -n "Test" -t $SESSION: 'sleep=10000'\;
#    split-window -v 'Term'\;   \
#    split-window -h \;          \
#    new-window 'Art' \;       \
