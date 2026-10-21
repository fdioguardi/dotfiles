#!/usr/bin/env bash

STATE_FILE="/tmp/dpms_enabled"

is_dpms_enabled() {
  xset -q | grep -q "DPMS is Enabled"
}

toggle_dpms() {
  if is_dpms_enabled; then
    xset -dpms
    xset s off
    echo "off" > "$STATE_FILE"
  else
    xset +dpms
    xset s on
    echo "on" > "$STATE_FILE"
  fi
}

print_status() {
  if is_dpms_enabled; then
    echo "  DPMS"
  else
    echo "  DPMS"
  fi
}

case "$1" in
  --toggle)
    toggle_dpms
    ;;
  *)
    print_status
    ;;
esac
