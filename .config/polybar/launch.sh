#!/bin/bash

# Terminate already running bar instances
killall -q polybar

# Wait until the processes have been shut down
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

# Launch bar in every connected monitor
bar=main

echo "---" | tee -a /tmp/$bar.log

for monitor in $(xrandr --query | grep " connected" | cut -d" " -f1); do
    MONITOR=$monitor polybar --reload $bar -c ~/.config/polybar/config.ini >> /tmp/$bar.log 2>&1 &
done

echo "Bars launched..."
