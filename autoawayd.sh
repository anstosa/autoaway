#!/bin/bash

DIR="$( cd "$( dirname "$0" )" && pwd )"
TMUX="/usr/bin/tmux"
SESSION="autoaway"

case "$1" in
    start)
        $TMUX -2 -u new-session -d -s $SESSION $DIR/autoaway.sh
    ;;

    stop)
        $TMUX kill-session -t $SESSION
    ;;

    restart)
        "$0" stop
        sleep 1
        "$0" start || exit 1
    ;;

    *)
        echo "Usage: $0 [start|stop|restart]"
        exit 1
    ;;
esac

