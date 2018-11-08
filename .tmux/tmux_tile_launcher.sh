#!/bin/bash

# simple script to detect if an unattached tmux session is running and 
# attach to it instead creating a new session

if $(tmux list-sessions | grep -vq attached)
    then
        tmux attach-session
    else
        tmux -f $HOME/.tmux/tmux.conf new-session
fi
