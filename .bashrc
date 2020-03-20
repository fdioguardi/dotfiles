#   ____      _      ____     _   _    ____       ____  
#U | __")uU  /"\  u / __"| u |'| |'|U |  _"\ u U /"___| 
# \|  _ \/ \/ _ \/ <\___ \/ /| |_| |\\| |_) |/ \| | u   
#  | |_) | / ___ \  u___) | U|  _  |u |  _ <    | |/__  
#  |____/ /_/   \_\ |____/>> |_| |_|  |_| \_\    \____| 
# _|| \\_  \\    >>  )(  (__)//   \\  //   \\_  _// \\  
#(__) (__)(__)  (__)(__)    (_") ("_)(__)  (__)(__)(__)

source /etc/profile

# Enviroment variables
export PAGER="most"
export PATH="$PATH:~/.local/bin"
export PS1="\W \\$ "

# Keyboard layout
setxkbmap -layout "us" -variant "intl"

# Reamped keys
setxkbmap -option caps:ctrl_modifier

# Bash settings
set -o vi
shopt -s autocd	# Allows you to cd into a directory by just typing it’s name
bind :clear-screen

# User specific aliases and functions
alias brightness='xrandr --output eDP-1 --brightness'
alias syu='sudo pacman --color=auto -Syu'
alias ls='ls --color=auto -l'
alias l='ls --color=auto -lA'
alias ll='ls --color=auto -la --time-style long-iso'
alias cd..='cd ..'
alias ..='cd ..'
alias ...='cd ../../'
alias ....='cd ../../../'
alias .....='cd ../../../../'
alias ff='find / -name'
alias f='find . -name'
alias grep='grep --color=auto'
alias egrep='egrep --color=auto'
alias fgrep='fgrep --color=auto'
alias pacman='sudo pacman --color=auto'
alias p='sudo pacman --color=auto'
alias pactree='pactree --color'
alias vdir='vdir --color=auto'
alias watch='watch --color'
alias mkdir='mkdir -pv'
alias rmd='rmdir'
alias mkd='mkdir -pv'
alias v='vim'
alias vi='vim'
alias sv='sudo vim'
alias SS='sudo systemctl'
alias g='git'
alias ka='killall'
alias ex='extract'
alias wifi-scan='nmcli device wifi rescan && nmcli device wifi list'
alias wifi-connect='nmcli device wifi connect'
alias bt='bluetoothctl'
alias anakin='sudo pacman -Rns $(pacman -Qtdq)'
alias config='/usr/bin/git --git-dir=/home/felipe/.dotfiles --work-tree=/home/felipe' # Managing dotfiles
alias pharo='pharo ~/Pharo/images/Pharo8.0-SNAPSHOT-64bit-5173b02.image &'
