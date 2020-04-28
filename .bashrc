#   ____      _      ____     _   _    ____       ____  
#U | __")uU  /"\  u / __"| u |'| |'|U |  _"\ u U /"___| 
# \|  _ \/ \/ _ \/ <\___ \/ /| |_| |\\| |_) |/ \| | u   
#  | |_) | / ___ \  u___) | U|  _  |u |  _ <    | |/__  
#  |____/ /_/   \_\ |____/>> |_| |_|  |_| \_\    \____| 
# _|| \\_  \\    >>  )(  (__)//   \\  //   \\_  _// \\  
#(__) (__)(__)  (__)(__)    (_") ("_)(__)  (__)(__)(__)

source /etc/profile

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# Enable programmable completion features
[[ -f /etc/bash_completion ]] && source /etc/bash_completion

# Enviroment variables
export PATH="${PATH}:$HOME/.bin"
export EDITOR="vim"
export PAGER="most"
export BROWSER="firefox"
export PS1="\W \\$ "

# Keyboard layout
setxkbmap -layout "us" -variant "intl"

# Reamped keys
setxkbmap -option caps:ctrl_modifier

# Bash settings
set -o braceexpand -o notify -o vi
bind 'set completion-ignore-case on' 'set colored-stats on' 'set show-all-if-ambiguous on' 'set completion-prefix-display-length 3' 'set show-all-if-unmodified on'

bind :clear-screen
bind "\C-a":beginning-of-line
bind "\C-e":end-of-line
shopt -s autocd cdspell cmdhist dirspell dotglob globstar histappend interactive_comments lithist no_empty_cmd_completion nocaseglob progcomp_alias shift_verbose

# Avoid succesive duplicates in the bash command history
export HISTCONTROL=ignoredups

# Aliases
[[ -f ~/.bash_aliases ]] && source ~/.bash_aliases
