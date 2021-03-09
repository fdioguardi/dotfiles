#
# .profile
#

# Path
export PATH="${PATH}:${HOME}/.bin:${HOME}/.local/bin"

# XDG variables
export XDG_CACHE_HOME="$HOME"/.cache
export XDG_CONFIG_HOME="$HOME"/.config
export XDG_DATA_HOME="$HOME"/.local/share

# Global variables
[ -r "$XDG_CONFIG_HOME"/sh/env.sh ] && source "$XDG_CONFIG_HOME"/sh/env.sh

# Remove 'X' cursor
xsetroot -cursor_name left_ptr

# Increase key speed via a rate change
xset r rate 300 50
