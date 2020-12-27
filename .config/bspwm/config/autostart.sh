#!/bin/sh

## Apps
__clistart() { $TERMINAL --title "$1" --command  "$@" & }

__start() { pkill "$1"; "$@" & }

__start feh --no-fehbg --bg-fill --randomize "$HOME"/.wallpaper/*/*

__start sxhkd

__start picom -b

__start unclutter --ignore-scrolling --fork

__start redshift

__start pavucontrol

__clistart ncspot

# I haven’t figured out how to set a rule for bluetoothctl yet, so this will do
bspc rule -a Alacritty -o desktop=^10 state=floating rectangle=1378x79+15+947

__clistart bluetoothctl

# Scripts
recolorize gruvbox &

"$HOME"/.config/polybar/launch.sh &

# WM-specific keybindings
sxhkd -c "${XDG_CONFIG_HOME:-$HOME/.config}/sxhkd/wm_sxhkdrc" &
