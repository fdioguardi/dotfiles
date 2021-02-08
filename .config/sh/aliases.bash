#
# aliases.bash
#

alias \
  ls='ls --color'                                 \
  l='ls --color -A --group-directories-first'     \
  ll='ls --color -lA --group-directories-first'   \
  cat='bat'                                       \
  ..='cd ..'                                      \
  ...='cd ../../'                                 \
  ....='cd ../../../'                             \
  .....='cd ../../../../'                         \
  ff='sudo find / -name'                          \
  f='find . -name'                                \
  grep='grep --color=auto'                        \
  tmp='mc /tmp/$RANDOM'                           \
  mkdir='mkdir -pv'                               \
  rmd='rmdir'                                     \
  mkd='mkdir -pv'

alias \
  i='sudo pacman --color=auto --needed -S'        \
  r='sudo pacman --color=auto -Rns'               \
  y='yay'                                         \
  ia='yay --color=auto -S'                        \
  ra='yay --color=auto -Rns'                      \
  ro='yay --clean'

alias \
  vi='v'                                          \
  vim='v'                                         \
  vimrc='"$EDITOR" "$HOME"/.config/nvim/init.lua'

alias \
  pls='sudo $(fc -ln -1)' \
  g='git'                 \
  ka='killall'            \
  bt='bluetoothctl'       \
  rc='recolorize'         \

alias \
  brightness='xrandr --output eDP-1 --brightness'                         \
  pharo='pharo $HOME/Pharo/Pharo8.0-SNAPSHOT-64bit-1b7a8d8.image &'       \
  d='/usr/bin/git --git-dir="$HOME"/.dotfiles --work-tree="$HOME"' # Managing dotfiles
