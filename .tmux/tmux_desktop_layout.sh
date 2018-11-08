#!/bin/bash

masterconf="/home/$USER/.tmux/master.conf"
slaveconf="/home/$USER/.tmux/slave.conf"

tmux -2 -f $masterconf new-session -s controlsession \; \
    split-window -v -p 70 \; \
    split-window -h \; \
    select-pane -t 0 \; \
    send-keys "tmux -2 -f $slaveconf -L slave-sessions new-session -s topterm \; new-window \; select-window -t 0 \; send-keys "weechat" C-m \; select-window -t 1\; send-keys "profanity" C-m \;" C-m \; \
    select-pane -t 1 \; \
    send-keys "tmux -2 -f $slaveconf -L slave-sessions new-session -s leftterm" C-m \; \
    select-pane -t 2 \; \
    send-keys "tmux -2 -f $slaveconf -L slave-sessions new-session -s rightterm" C-m \; \
