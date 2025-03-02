#!/bin/sh

__clistart() {
  pkill "$1"
  "$TERMINAL" --title "$1" --override "font_size=10" --execute "$@" &
}

__start() {
  pkill "$1"
  "$@" &
}

__start feh --no-fehbg --bg-fill \
  --randomize "${XDG_DATA_HOME:-$HOME/.local/share}"/wallpapers/*/*

__start sxhkd -m -1

__start unclutter --ignore-scrolling --fork

# __start xrandr --output "$(xrandr -q | grep "primary" | cut -f1 -d' ')" \
#   --brightness 0.4

# __start redshift 2 > /dev/null 2>&1

__start eww daemon

__start recolorize -q ayu

__clistart ncspot

__clistart bluetoothctl

__clistart pulsemixer

# Remove 'X' cursor
xsetroot -cursor_name left_ptr &

# Lock screen after 5 minutes of inactivity
# xset s 300 10
# xss-lock -n /usr/libexec/xsecurelock/dimmer -l -- xsecurelock &
