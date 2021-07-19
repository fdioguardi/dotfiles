#!/bin/sh

# Note: This is a very simplistic approach because I alerady
#   know the settings I want to apply

setup_display() {
  xrandr --output "$1" \
    --primary --auto \
    --output "$2" \
    --auto \
    --rotate normal \
    --right-of "$1"
}

one_monitor_settings() {
  bspc monitor "$1" -d 1 2 3 4 5 6 7 8 9 10
}

start_apps() {
  "$config"/polybar/launch.sh &
}

spread() {
  for desktop in $(bspc query -D --monitor "$1" | tail --lines 5); do
    bspc desktop "$desktop" --to-monitor "$2"
  done
  bspc desktop "Desktop" --remove
  start_apps
}

merge() {
  xrandr --output "$2" --off
  bspc monitor "$2" --add-desktops $(($(bspc query -D | wc -l) + 1))
  for desktop in $(bspc query -D --monitor "$2"); do
    bspc desktop "$desktop" --to-monitor "$1"
  done
  bspc monitor "$2" --remove
  bspc monitor "$1" \
    --reorder-desktops "$(seq "$(bspc query -D --names --monitor "$1" | wc -l)")"
}

two_monitor_settings() {
  if [ "$(bspc query -D --monitor "$1" | wc -l)" -eq 10 ]; then
    setup_display "$1" "$2"
    spread "$1" "$2"
  elif [ "$(bspc query -D --monitor "$1" | wc -l)" -eq 5 ]; then
    merge "$1" "$2"
    return
  else
    setup_display "$1" "$2"
    bspc monitor "$1" -d 1 2 3 4 5
    bspc monitor "$2" -d 6 7 8 9 10
  fi

  [ -x "$config"/bspwm/config/desktop_setup.sh ] \
    && "$config"/bspwm/config/desktop_setup.sh \
      --monitor "$2" &
}

# use_secondary_monitor_settings() {
#   [ "$(bspc query -D --monitor "$1" | wc -l)" -gt 1 ] && exit 1

#   xrandr --output "$1" --off --output "$2" --auto --primary
#   one_monitor_settings "$2"
#   bspc monitor "$1" --remove
# }

toggle() {
  [ "$(bspc query -D --monitor "$1" | wc -l)" -eq 1 ] \
    && one_monitor_settings "$1"

  [ "$(bspc query -D --monitor "$1" | wc -l)" -ne 10 ] && exit 1

  xrandr --output "$1" --off --output "$2" --auto --primary
  bspc monitor "$1" --swap "$2" 2> /dev/null
  bspc monitor "$2" --remove 2> /dev/null
  bspc monitor "$1" --rename "$2" 2> /dev/null
}

readonly config=${XDG_CONFIG_HOME:-${HOME}/.config}
readonly primary=$(xrandr -q \
  | grep -w "primary" \
  | cut -f1 -d" ")

if [ "$(xrandr -q | grep -wc connected)" -eq 1 ] || [ "$#" -gt 1 ]; then
  one_monitor_settings "$primary"
else
  readonly secondary=$(xrandr -q \
    | grep -w "connected" \
    | grep -v "primary" \
    | cut -f1 -d" ")

  if [ "$1" = "--toggle" ]; then
    toggle "$primary" "$secondary"
  else
    two_monitor_settings "$primary" "$secondary"
  fi
fi
