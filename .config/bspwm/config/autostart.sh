#!/bin/bash

__clistart() { $TERMINAL --title "$1" --execute  "$@" & }

__start() { pkill "$1"; "$@" & }


__start feh --no-fehbg --bg-fill --randomize "$HOME"/.wallpaper/*/*

__start sxhkd -m -1

__start unclutter --ignore-scrolling --fork

__start redshift 2&> /dev/null

__start recolorize -q ayu

__clistart pulsemixer

__clistart ncspot

__clistart bluetoothctl


"${XDG_CONFIG_HOME:-$HOME/.config}"/polybar/launch.sh &
