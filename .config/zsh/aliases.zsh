#
# aliases.zsh
#

alias \
  ls='ls --color'                                 \
  grep='grep --color=auto'

abbr \
  l='ls --color -A --group-directories-first'     \
  ll='ls --color -Agho --group-directories-first' \
  cat='bat'                                       \
  ..='cd ..'                                      \
  ...='cd ../../'                                 \
  ....='cd ../../../'                             \
  .....='cd ../../../../'                         \
  ff='sudo find / -name'                          \
  f='find . -name'                                \
  tmp='mc /tmp/$RANDOM'                           \
  rmd='rmdir'                                     \
  mkd='mkdir -pv'

abbr \
  p='paru'              \
  i='paru -S --needed'  \
  r='paru -Rns'         \
  ro='paru --clean'

abbr \
  pls='sudo $(fc -ln -1)' \
  g='git'                 \
  ka='killall'            \
  rc='recolorize'         \

alias \
  vi='v'                                          \
  vim='v'                                         \
  vimrc='"$EDITOR" "$HOME"/.config/nvim/init.lua'

alias \
  brightness='xrandr --output eDP-1 --brightness'                   \
  pharo='pharo $HOME/Pharo/Pharo8.0-SNAPSHOT-64bit-1b7a8d8.image &' \
  d='/usr/bin/git --git-dir="$HOME"/.dotfiles --work-tree="$HOME"' # Managing dotfiles
