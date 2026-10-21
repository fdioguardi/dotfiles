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

__start eww daemon

__start recolorize -q ayu

# Wait for network (up to 60s) so ncspot can reach Spotify
(
  nm-online -q -t 60
  __clistart ncspot
) &

__clistart bluetui

__clistart pulsemixer

# Remove 'X' cursor
xsetroot -cursor_name left_ptr &

# Lock screen after 5 minutes of inactivity
xset s 300 10
xset dpms 300 600 900
xss-lock -n /usr/lib/xsecurelock/dimmer -l -- xsecurelock &
