#!/bin/sh

__clistart() { pkill "$1"; "$TERMINAL" --title "$1" --execute "$@" & }

__start() { pkill "$1"; "$@" & }

__start feh --no-fehbg --bg-fill \
  --randomize "${XDG_DATA_HOME:-$HOME/.local/share}"/wallpapers/*/*

__start sxhkd -m -1

__start unclutter --ignore-scrolling --fork

__start xrandr --output "$(xrandr -q | grep "primary" | cut -f1 -d' ')" \
  --brightness 0.4

__start redshift 2 > /dev/null 2>&1

__start eww daemon

__start recolorize -q ayu

__clistart ncspot

__clistart bluetoothctl

__clistart pulsemixer

"${XDG_CONFIG_HOME:-$HOME/.config}"/polybar/launch.sh &

# Remove 'X' cursor
xsetroot -cursor_name left_ptr

# Increase key speed via a rate change
xset r rate 250 50
