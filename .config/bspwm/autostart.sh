#!/bin/bash

## Variables
wallpaper=$(shuf -n1 -e $HOME/.wallpaper/nice/*)
apps=(sxhkd feh pulseaudio bluetoothctl dunst)

## Kill Apps
for app in ${apps[*]}
do
	killall -Iq -9 $app
done

## Ricing
recolorize -c "$HOME/.Xresources.d/colors" -x "$HOME/.Xresources" $color -r	# just "recolorize" woul be enough, I’m a show off
feh --bg-fill --no-fehbg $wallpaper &

## Start Apps
sxhkd &

bluetoothctl power on

xflux -l -34.940404 -g -57.983608 &

$HOME/.config/polybar/launch.sh

#dunst & #\
#-lb "$BACKGROUND" -lf "$FOREGROUND" -lft "$GREEN" \
#-nb "$BACKGROUND" -nf "$FOREGROUND" -nft "$BLUE" \
#-cb "$BACKGROUND" -cf "$FOREGROUND" -cft "$RED" &

#picom -b

