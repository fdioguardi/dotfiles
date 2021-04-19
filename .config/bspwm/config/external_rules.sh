#!/bin/sh

window_id=$1
window_class=$2

[ "$window_class" = "$TERMINAL" ] \
  && [ $(xtitle "$window_id") = "bluetoothctl" ] \
  && echo "desktop=^10 state=floating follow=off rectangle=1378x79+15+947"
