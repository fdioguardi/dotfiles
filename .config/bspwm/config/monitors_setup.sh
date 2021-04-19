#!/bin/sh

# Note: This is a very simplistic approach because I alerady
#   know the settings I want to apply

setup_display()
{
  xrandr --output "$1" \
    --primary --mode 1920x1080 \
    --output "$2" \
    --mode 1920x1080 \
    --rotate normal \
    --right-of "$1"
}

one_monitor_settings()
{
  bspc monitor "$1" -d 1 2 3 4 5 6 7 8 9 10
}

start_apps()
{
  "$config"/polybar/launch.sh &
}

two_monitor_settings()
{
  setup_display "$1" "$2"

  bspc monitor "$1" -d 1 2 3 4 5
  bspc monitor "$2" -d 6 7 8 9 10

  [ -x "$config"/bspwm/config/desktop_setup.sh ] \
    && "$config"/bspwm/config/desktop_setup.sh   \
      --monitor "$2" &

  start_apps
}

readonly config=${XDG_CONFIG_HOME:-${HOME}/.config}
readonly primary_monitor_name=$(xrandr --listactivemonitors \
  | grep "eDP" \
  | awk 'NF {print $NF}')

if [ "$(xrandr -q | grep -wc connected)" -eq 2 ]; then
  readonly external_monitor_name=$(xrandr -q \
    | grep -w connected \
    | grep -v $primary_monitor_name \
    | cut -f1 -d" ")

  two_monitor_settings $primary_monitor_name $external_monitor_name
else
  one_monitor_settings $primary_monitor_name
fi
