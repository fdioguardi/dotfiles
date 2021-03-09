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
  p='paru'          \
  i='paru -S'       \
  r='paru -Rns'     \
  ro='paru --clean'

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


[ -r ${XDG_CONFIG_HOME:-$HOME/.config}/sh/completions/complete_alias ] \
  && source ${XDG_CONFIG_HOME:-$HOME/.config}/sh/completions/complete_alias \
  && complete -F _complete_alias p g d
