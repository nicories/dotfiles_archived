#!/bin/bash

# start sway on login on tty1
if [[ -z $DISPLAY ]]; then
  if [[ $(tty) = /dev/tty1 ]]; then
    exec ~/.config/sway/start.sh
  fi
  if [[ $(tty) = /dev/tty2 ]]; then
    startx
  fi
fi


