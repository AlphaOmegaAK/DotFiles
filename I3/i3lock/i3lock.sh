#!/usr/bin/env bash
#set -eu

#[[ -z "$(pgrep i3lock)" ]] || exit
#i3lock -n -u -t -i ${HOME}/.config/i3lock/poly-triangles.png

lock() {
    i3lock -nf -i $HOME/.config/i3lock/poly-triangles.png
}

case "$1" in
    lock)
        lock
        ;;
    logout)
        i3-msg exit
        ;;
    suspend)
        lock && systemctl suspend
        ;;
    hibernate)
        lock && systemctl hibernate
        ;;
    reboot)
        systemctl reboot
        ;;
    shutdown)
        systemctl poweroff
        ;;
    *)
        echo "Usage: $0 {lock|logout|suspend|hibernate|reboot|shutdown}"
        exit 2
esac

exit 0
