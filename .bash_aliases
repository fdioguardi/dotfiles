#  __   __    __   __   ____  ____  ____
# / _\ (  )  (  ) / _\ / ___)(  __)/ ___)
#/    \/ (_/\ )( /    \\___ \ ) _) \___ \
#\_/\_/\____/(__)\_/\_/(____/(____)(____/

alias syu='sudo pacman --color=auto -Syu ; yay -Syu'
alias ls='ls --color=auto'
alias l='ls --color=auto -lA'
alias ll='ls --color=auto -lA --time-style long-iso'
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
alias y='yay --color=auto'
alias yeet='yay -Rns'
alias pactree='pactree --color'
alias vdir='vdir --color=auto'
alias watch='watch --color'
alias mkdir='mkdir -pv'
alias rmd='rmdir'
alias mkd='mkdir -pv'
alias v='nvim'
alias vi='nvim'
alias vim='nvim'
alias vimconf='nvim $HOME/.config/nvim/config'
alias vimterm='nvim $HOME/.config/alacritty/alacritty.yml.in'
alias sv='sudo nvim'
alias SS='sudo systemctl'
alias g='git'
alias ka='killall'
alias ex='extract'
alias bt='bluetoothctl'
alias anakin='sudo pacman -Rns $(pacman -Qtdq)'
alias dots='/usr/bin/git --git-dir=/home/felipe/.dotfiles --work-tree=/home/felipe' # Managing dotfiles
alias pharo='pharo ~/Pharo/images/Pharo8.0-SNAPSHOT-64bit-a153e04.image &'
alias ducks='du -a ./ | sort -n -r | head -n'
alias rc='recolorize'
alias brightness='xrandr --output eDP-1 --brightness'
alias :q='exit'
alias :wq='exit'
