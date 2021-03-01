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
  rmd='rmdir'                                     \
  mkd='mkdir -pv'

alias \
  y='yay'                   \
  i='yay --color=auto -S'   \
  r='yay --color=auto -Rns' \
  ro='yay --clean -Yc'

alias \
  vi='v'                                          \
  vim='v'                                         \
  vimrc='"$EDITOR" "$HOME"/.config/nvim/init.lua'

alias \
  pls='sudo $(fc -ln -1)' \
  g='git'                 \
  ka='killall'            \
  rc='recolorize'         \

alias \
  brightness='xrandr --output eDP-1 --brightness'                   \
  pharo='pharo $HOME/Pharo/Pharo8.0-SNAPSHOT-64bit-1b7a8d8.image &' \
  d='/usr/bin/git --git-dir="$HOME"/.dotfiles --work-tree="$HOME"' # Managing dotfiles
