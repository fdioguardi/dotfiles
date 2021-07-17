#
# aliases.zsh
#

alias \
  grep='grep --color=auto' \
  ls='ls --color'

abbr \
  cat='bat --decorations=never' \
  chx='chmod +x' \
  f='find . -name' \
  ff='sudo find / -name' \
  l='ls --color -A --group-directories-first' \
  ll='ls --color -Agho --group-directories-first' \
  tmp='cd $(mktemp -d)' \
  rmd='rmdir' \
  mkd='mkdir -pv' \
  ...='cd ../../' \
  ....='cd ../../../' \
  .....='cd ../../../../'

abbr \
  p='paru' \
  i='paru -S --needed' \
  r='paru -Rns' \
  clean='paru --clean --noconfirm && topgrade -yc' \
  u='topgrade -y &; "$XDG_DATA_HOME"/nvim/install_nvim.sh &'

abbr \
  calc='noglob math' \
  cu='nmcli connection up' \
  g='git' \
  ka='killall' \
  pls='sudo $(fc -ln -1)' \
  rc='recolorize' \
  venv='source .venv/bin/activate'

alias \
  vi='v' \
  vim='v'

alias \
  battery='cat /sys/class/power_supply/BAT0/uevent' \
  brightness='xrandr --output eDP-1 --brightness' \
  d='/usr/bin/git --git-dir="$HOME"/.dotfiles --work-tree="$HOME"' # Managing dotfiles
