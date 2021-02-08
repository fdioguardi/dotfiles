#!/bin/bash

# Terminate already running bar instances
killall -q polybar

# Launch bar in every connected monitor
bar=main

echo "---" | tee -a /tmp/$bar.log

for monitor in $(xrandr -q | grep -w "connected" | cut -d" " -f1); do
  MONITOR=$monitor polybar          \
    --reload $bar                   \
    -c ~/.config/polybar/config.ini \
    >> /tmp/$bar.log 2>&1           \
    & disown
done

echo "Bars launched..."
