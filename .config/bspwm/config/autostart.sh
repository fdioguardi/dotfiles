#!/bin/sh

## Apps
__start() { pkill "$1"; "$@" & }

__start feh --no-fehbg --bg-fill --randomize "$HOME"/.wallpaper/*/*

__start sxhkd

__start picom -b

__start unclutter --ignore-scrolling --fork

__start redshift

# Scripts
recolorize &

"$HOME"/.config/polybar/launch.sh &

# WM-specific keybindings
sxhkd -c "${XDG_CONFIG_HOME:-$HOME/.config}/sxhkd/bspwm" &
