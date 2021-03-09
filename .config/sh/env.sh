#
# exports.sh
#

# Default applications
export EDITOR="nvim"
export TERMINAL="alacritty"
export PAGER="less"
export BROWSER="qutebrowser"
export READER="zathura"

# Clean $HOME
export HISTFILE="${XDG_DATA_HOME:-${HOME}/.local/share}/bash/bash_history"
export INPUTRC="${XDG_CONFIG_HOME:-${HOME}/.config}/sh/inputrc"
export XINITRC="${XDG_CONFIG_HOME:-${HOME}/.config}/x11/xinitrc"

# Less
export LESS_TERMCAP_mb=$'\e[1;32m'
export LESS_TERMCAP_md=$'\e[1;32m'
export LESS_TERMCAP_me=$'\e[0m'
export LESS_TERMCAP_se=$'\e[0m'
export LESS_TERMCAP_so=$'\e[01;33m'
export LESS_TERMCAP_ue=$'\e[0m'
export LESS_TERMCAP_us=$'\e[1;4;31m'
export LESSHISTFILE=/dev/null

# Git Prompt
export GIT_PS1_SHOWDIRTYSTATE="true"
