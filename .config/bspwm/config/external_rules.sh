#!/bin/sh

window_class=$2
window_instance=$3

if echo "$window_class" | grep -q "^Gimp"; then
  echo "desktop=^4 state=floating"

elif echo "$window_class" | grep -q "Zotero"; then
  if echo "$window_instance" | grep -q "Navigator"; then
    echo "desktop=^3 follow=off"
  else
    echo "state=floating"
  fi
fi
