#!/bin/sh

__clistart() { $TERMINAL --title "$1" --command  "$@" & }

__start() { pkill "$1"; "$@" & }


__start feh --no-fehbg --bg-fill --randomize "$HOME"/.wallpaper/*/*

__start sxhkd -m -1

__start unclutter --ignore-scrolling --fork

__start redshift

__start pavucontrol

__clistart ncspot

__clistart bluetoothctl

## Scripts
recolorize -q ayu &

"${XDG_CONFIG_HOME:-$HOME/.config}"/polybar/launch.sh &
