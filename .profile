#
# .profile
#

# Path
export PATH="${PATH}:$HOME/.bin"

# XDG variables
export XDG_DATA_HOME=${HOME}/.local/share
export XDG_CONFIG_HOME=${HOME}/.config
export XDG_CACHE_HOME=${HOME}/.cache

# Default applications
export EDITOR="nvim"
export TERMINAL="alacritty"
export PAGER="less"
export BROWSER="$HOME/.bin/firebox"
export READER="satura"

# Global variables
[ -r "$XDG_CONFIG_HOME"/sh/exports.bash ] && . "$XDG_CONFIG_HOME"/sh/exports.bash

# Keyboard layout
setxkbmap -layout "us" -variant "intl"

# Map Caps_Lock to Esc
setxkbmap -option caps:swapescape

# Remove 'X' cursor
xsetroot -cursor_name left_ptr

# Increase key speed via a rate change
xset r rate 200 50
