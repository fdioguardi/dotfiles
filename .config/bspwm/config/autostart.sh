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
recolorize
cp "$wallpaper" /tmp/wallpaper ; feh --no-fehbg --bg-fill "$wallpaper" &

## Start Apps
sxhkd &

"$HOME"/.config/polybar/launch.sh

picom -b

unclutter --ignore-scrolling --fork

# Window swallow
#pidof "$HOME"/.config/bspwm/scripts/bspswallow.sh || . "$HOME"/.config/bspwm/scripts/bspswallow.sh &
