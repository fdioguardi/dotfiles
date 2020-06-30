#
# ~/.profile
#

[[ -n "$BASH" ]] && [[ -r ~/.bashrc ]] && . ~/.bashrc

# XDG variables
export XDG_DATA_HOME=${HOME}/.local/share
export XDG_CONFIG_HOME=${HOME}/.config
export XDG_DATA_DIRS=/usr/local/share/:/usr/share/
export XDG_CONFIG_DIRS=/etc/xdg
export XDG_CACHE_HOME=${HOME}/.cache

# Preferred application variables
export EDITOR="nvim"
export TERMINAL="alacritty"
export PAGER="less"
export BROWSER="firefox"

# Keyboard layout
setxkbmap -layout "us" -variant "intl"

# Map Caps_Lock to Esc
setxkbmap -option caps:swapescape

# Remove 'X' cursor
xsetroot -cursor_name left_ptr

