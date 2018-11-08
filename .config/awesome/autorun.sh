#!/usr/bin/env bash

function run {
  if ! pgrep $1 ;
  then
    $@&
  fi
}

run compton --config $HOME/.config/compton.conf -b &
run nm-applet &
run pasystray &
run $HOME/.fehbg &
