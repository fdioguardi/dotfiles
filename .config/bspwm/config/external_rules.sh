#!/bin/sh

window_id=$1
window_class=$2
window_instance=$3

if [ "$window_class" = "$TERMINAL" ]; then
  [ "$(xtitle "$window_id")" = "bluetoothctl" ] \
    && echo "desktop=^10 state=floating rectangle=1378x79+15+947"

elif echo "$window_class" | grep -q "^Gimp"; then
  echo "desktop=^4 state=floating"

elif echo "$window_class" | grep -q "Zotero"; then
  if echo "$window_instance" | grep -q "Navigator"; then
    echo "desktop=^3 follow=off"
  else
    echo "state=floating"
  fi

elif echo "$window_class" | grep -q "^steam_app_"; then
  echo "desktop=^4"
fi
