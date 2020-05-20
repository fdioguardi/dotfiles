#  __   __    __   __   ____  ____  ____ 
# / _\ (  )  (  ) / _\ / ___)(  __)/ ___)
#/    \/ (_/\ )( /    \\___ \ ) _) \___ \
#\_/\_/\____/(__)\_/\_/(____/(____)(____/

alias syu='sudo pacman --color=auto -Syu'
alias ls='ls --color=auto -l'
alias l='ls --color=auto -lA'
alias ll='ls --color=auto -la --time-style long-iso'
alias cd..='cd ..'
alias ..='cd ..'
alias ...='cd ../../'
alias ....='cd ../../../'
alias .....='cd ../../../../'
alias ff='sudo find / -name'
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
alias echo='echo -n'
alias v='vim'
alias vi='vim'
alias sv='sudo vim'
alias SS='sudo systemctl'
alias g='git'
alias ka='killall'
alias ex='extract' 
alias bt='bluetoothctl'
alias anakin='sudo pacman -Rns $(pacman -Qtdq)'
alias dots='/usr/bin/git --git-dir=/home/felipe/.dotfiles --work-tree=/home/felipe' # Managing dotfiles
alias pharo='pharo ~/Pharo/images/Pharo8.0-SNAPSHOT-64bit-5173b02.image &'
alias ducks='du -a ./ | sort -n -r | head -n'
alias rc='recolorize'
alias brightness='xrandr --output eDP-1 --brightness'