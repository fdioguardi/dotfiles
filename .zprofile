#
# .zprofile
#

# Remove 'X' cursor
xsetroot -cursor_name left_ptr

# Increase key speed via a rate change
xset r rate 250 50

## Global variables
export PATH="${PATH}:${HOME}/.bin:${HOME}/.local/bin:${HOME}/.local/nvim/bin"

# XDG variables
export XDG_CACHE_HOME="$HOME/.cache"
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_DATA_HOME="$HOME/.local/share"

# Default applications
export EDITOR="nvim"
export TERMINAL="kitty"
export BROWSER="brave"
export READER="zathura"

# Clean $HOME
export CARGO_HOME="$XDG_DATA_HOME/.local/share/cargo"
export HISTFILE="$XDG_CACHE_HOME/zsh/history"
export ZDOTDIR="$XDG_CONFIG_HOME/zsh"

# History
export HISTSIZE=1000
export SAVEHIST=1000

# Less
export LESS_TERMCAP_mb=$'\e[1;32m'
export LESS_TERMCAP_md=$'\e[1;32m'
export LESS_TERMCAP_me=$'\e[0m'
export LESS_TERMCAP_se=$'\e[0m'
export LESS_TERMCAP_so=$'\e[01;33m'
export LESS_TERMCAP_ue=$'\e[0m'
export LESS_TERMCAP_us=$'\e[1;4;31m'
export LESSHISTFILE=/dev/null

# Java
export _JAVA_AWT_WM_NONREPARENTING=1

# MPI
export OPENMPI_PATH="/usr/local/openmpi"
export PATH="$OPENMPI_PATH/bin:$PATH"
export LD_LIBRARY_PATH="$OPENMPI_PATH/lib:$LD_LIBRARY_PATH"
