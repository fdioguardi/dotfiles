#!/bin/bash

# Terminate already running bar instances
killall -q polybar

# Launch bar in every connected monitor
bar=main

for monitor in $(xrandr -q | grep -w "connected" | cut -d" " -f1); do
  MONITOR=$monitor polybar          \
    --reload $bar                   \
    -c ~/.config/polybar/config.ini \
    &> /dev/null &
done
