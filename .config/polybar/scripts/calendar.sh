#!/bin/sh

# Toggle the calendar; a click outside of it closes it

stamp="${XDG_RUNTIME_DIR:-/tmp}/polybar-calendar-closed"

is_open() {
  eww active-windows | grep -qw "calendar"
}

# Is the pointer over the calendar window?
pointer_inside() {
  win=$(xdotool search --name '^Eww - calendar$' | head -n 1)
  [ -n "$win" ] || return 1
  eval "$(xdotool getwindowgeometry --shell "$win")"
  x=$X y=$Y w=$WIDTH h=$HEIGHT
  eval "$(xdotool getmouselocation --shell)"
  [ "$X" -ge "$x" ] && [ "$X" -lt $((x + w)) ] \
    && [ "$Y" -ge "$y" ] && [ "$Y" -lt $((y + h)) ]
}

close_on_click_outside() {
  xinput test-xi2 --root | while read -r a b c _; do
    case "$a $b $c" in
      "EVENT type 15") pressed=1 && continue ;; # RawButtonPress
      "EVENT type "*) pressed=0 && continue ;;
    esac
    # Left, middle or right button; ignore the scroll wheel
    [ "$pressed" = 1 ] && [ "$a" = "detail:" ] || continue
    pressed=0
    case "$b" in 1 | 2 | 3) ;; *) continue ;; esac
    is_open || exit
    pointer_inside && continue
    # Let a click on the clock close it without reopening
    touch "$stamp"
    eww close calendar
    exit
  done
}

if is_open; then
  eww close calendar
elif [ -z "$(find "$stamp" -newermt '-1 second' 2> /dev/null)" ]; then
  eww close-all && eww open calendar
  close_on_click_outside &
fi
