#
# env.zsh
#

# Default applications
export EDITOR="nvim"
export TERMINAL="alacritty"
export PAGER="less"
export BROWSER="qutebrowser"
export READER="zathura"

# Clean $HOME
export HISTFILE=${XDG_CACHE_HOME:-${HOME}/.cache}/zsh/history
export XINITRC="${XDG_CONFIG_HOME:-${HOME}/.config}/x11/xinitrc"
export ZDOTDIR="${XDG_CONFIG_HOME:-${HOME}/.config}/zsh"

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

# Git Prompt
export GIT_PS1_SHOWDIRTYSTATE="true"
