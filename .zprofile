#
# .zprofile
#

## Global variables
export PATH="${PATH}:${HOME}/.bin:${HOME}/.local/bin:${HOME}/.local/nvim/bin"

# XDG variables
export XDG_CACHE_HOME="$HOME/.cache"
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_DATA_HOME="$HOME/.local/share"

# Default applications
export BROWSER="firefox"
export EDITOR="nvim"
export READER="zathura"
export TERMINAL="kitty"

# Clean $HOME
export CARGO_HOME="$XDG_DATA_HOME/cargo"
export HISTFILE="$XDG_CACHE_HOME/zsh/history"
export ZDOTDIR="$XDG_CONFIG_HOME/zsh"

# History
export HISTSIZE=1000
export SAVEHIST=1000

# Less
export LESSHISTFILE=/dev/null
export LESS_TERMCAP_mb=$'\e[1;32m'
export LESS_TERMCAP_md=$'\e[1;32m'
export LESS_TERMCAP_me=$'\e[0m'
export LESS_TERMCAP_se=$'\e[0m'
export LESS_TERMCAP_so=$'\e[01;33m'
export LESS_TERMCAP_ue=$'\e[0m'
export LESS_TERMCAP_us=$'\e[1;4;31m'

# Java
export _JAVA_AWT_WM_NONREPARENTING=1

# Python
export PYTHONSTARTUP="$XDG_CONFIG_HOME/python/pythonrc"

# XSecureLock
export XSECURELOCK_AUTH_CURSOR_BLINK=0
export XSECURELOCK_BLANK_TIMEOUT=30
export XSECURELOCK_PASSWORD_PROMPT=time
export XSECURELOCK_SHOW_HOSTNAME=0
export XSECURELOCK_SHOW_USERNAME=0
