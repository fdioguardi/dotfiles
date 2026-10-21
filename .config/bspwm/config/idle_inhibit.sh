#!/bin/sh

# Keep the screen awake while Firefox plays media
while :; do
  if playerctl -a -f '{{playerName}} {{status}}' status 2> /dev/null \
    | grep -qx 'firefox Playing'; then
    xset s reset
  fi
  sleep 60
done
