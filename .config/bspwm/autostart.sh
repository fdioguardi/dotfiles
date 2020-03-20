#!/bin/bash

## Variables
wallpaper=$(shuf -n1 -e $HOME/.wallpaper/nice)
apps=(sxhkd feh pulseaudio bluetoothctl)

## Kill Apps
for app in ${apps[*]}
do
	killall -Iq -9 $app
done

## Ricing
recolorize -c "$HOME/.Xresources.d/colors" -x "$HOME/.Xresources" $color -r	# just "recolorize" woul be enough, I’m a show off
feh --bg-scale --no-fehbg $wallpaper &

## Start Apps
sxhkd &

bluetoothctl power on

picom -b

dunst \
-lb "$BACKGROUND" -lf "$FOREGROUND" -lft "$GREEN" \
-nb "$BACKGROUND" -nf "$FOREGROUND" -nft "$BLUE" \
-cb "$BACKGROUND" -cf "$FOREGROUND" -cft "$RED" &


#$HOME/.config/polybar/launch.sh
