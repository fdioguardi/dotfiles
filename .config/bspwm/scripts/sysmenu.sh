#!/bin/bash

# Custom Rofi Script

BORDER="#00acc1"
SEPARATOR="#3D3D3D"
FOREGROUND="#f9f9f9"
BACKGROUND="#3D3D3D"
BACKGROUND_ALT="#3D3D3D"
HIGHLIGHT_BACKGROUND="#434343"
HIGHLIGHT_FOREGROUND="#00acc1"

BLACK="#000000"
WHITE="#ffffff"
RED="#e53935"
GREEN="#43a047"
YELLOW="#fdd835"
BLUE="#1e88e5"
MAGENTA="#00897b"
CYAN="#00acc1"
PINK="#d81b60"
PURPLE="#8e24aa"
INDIGO="#3949ab"
TEAL="#00897b"
LIME="#c0ca33"
AMBER="#ffb300"
ORANGE="#fb8c00"
BROWN="#6d4c41"
GREY="#757575"
BLUE_GREY="#546e7a"
DEEP_PURPLE="#5e35b1"
DEEP_ORANGE="#f4511e"
LIGHT_BLUE="#039be5"
LIGHT_GREEN="#7cb342"

# Launch Rofi
MENU="$(rofi -no-lazy-grab -sep "|" -dmenu -i -p 'System :' \
-hide-scrollbar true \
-bw 0 \
-lines 5 \
-line-padding 5 \
-padding 15 \
-width 15 \
-xoffset -17 -yoffset -52 \
-location 5 \
-columns 1 \
-show-icons -icon-theme "Papirus" \
-font "Noto Sans 9" \
-color-enabled true \
-color-window "$BACKGROUND,$BORDER,$SEPARATOR" \
-color-normal "$BACKGROUND_ALT,$FOREGROUND,$BACKGROUND_ALT,$HIGHLIGHT_BACKGROUND,$HIGHLIGHT_FOREGROUND" \
-color-active "$BACKGROUND,$MAGENTA,$BACKGROUND_ALT,$HIGHLIGHT_BACKGROUND,$HIGHLIGHT_FOREGROUND" \
-color-urgent "$BACKGROUND,$YELLOW,$BACKGROUND_ALT,$HIGHLIGHT_BACKGROUND,$HIGHLIGHT_FOREGROUND" \
<<< ">> Shut down|>> Reboot|>> Suspend|>> Hibernate|>> Cancel")"

case "$MENU" in
    *Shut\ down)    shutdown -P now "Shutting down..."   ;;
    *Reboot)       shutdown -r now "Rebooting..."       ;;
	*Suspend)      systemctl suspend                    ;;
	*Hibernate)    systemctl hibernate                  ;;
	*Cancel)       exit 0                               ;;
esac

# More Options
# -fullscreen \

# Theming help
# color window = background, border, separator
# color normal = background, foreground, background-alt, highlight-background, highlight-foreground
# color active = background, foreground, background-alt, highlight-background, highlight-foreground
# color urgent = background, foreground, background-alt, highlight-background, highlight-foreground
