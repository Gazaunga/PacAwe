#!/bin/sh

# Kill X with C-A-BS
setxkbmap -option terminate:ctrl_alt_bksp

xrdb $HOME/.Xresources                       # load Xresources

xsetroot -solid black                       # black background

xset -b                                     # Disable system bell
unclutter -root -idle 2 &                   # kill inactive rat cursor

urxvtd -q -f -o                             # start urxvt server

sh $HOME/.fehbg &
#wal -i "$(< "${HOME}/.cache/wal/wal")"

# Changes the keyboard  repeat rate
xset r rate 300 30

exec awesome
