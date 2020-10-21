#
# .profile
#

# Path
export PATH="${PATH}:$HOME/.bin:$HOME/.local/bin"

# XDG variables
export XDG_DATA_HOME=${HOME}/.local/share
export XDG_CONFIG_HOME=${HOME}/.config
export XDG_CACHE_HOME=${HOME}/.cache

# Default applications
export EDITOR="nvim"
export TERMINAL="alacritty"
export PAGER="less"
export BROWSER="$HOME/.bin/firefox"
export READER="zathura"

# Global variables
[ -r "$XDG_CONFIG_HOME"/sh/env.bash ] && \
  source "$XDG_CONFIG_HOME"/sh/env.bash

# Keyboard layout
setxkbmap -layout "us" -variant "intl"

# Map Caps_Lock to Esc
setxkbmap -option caps:swapescape

# Remove 'X' cursor
xsetroot -cursor_name left_ptr

# Increase key speed via a rate change
xset r rate 300 50
