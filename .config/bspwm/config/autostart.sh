#!/bin/bash

## Variables
wallpaper=$(shuf -n1 -e "$HOME"/.wallpaper/*/*)
apps=(sxhkd feh pulseaudio bluetoothctl polybar picom)

## Kill Apps
for app in ${apps[*]}
do
	killall -Iq -9 "$app"
done

## Ricing
recolorize -c "$HOME/.Xresources.d/colors" -x "$HOME/.Xresources" -r
cp "$wallpaper" /tmp/wallpaper ; feh --bg-fill "$wallpaper" &

## Start Apps
sxhkd &

"$HOME"/.config/polybar/launch.sh

picom -b

# Window swallow
#pidof "$HOME"/.config/bspwm/scripts/bspswallow.sh || . "$HOME"/.config/bspwm/scripts/bspswallow.sh &
