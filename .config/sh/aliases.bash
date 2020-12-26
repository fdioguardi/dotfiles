#
# aliases.bash
#

alias \
  ls='ls --color'                                 \
  l='ls --color -A --group-directories-first'     \
  ll='ls --color -lA --group-directories-first'   \
  cat='bat'                                       \
  cd..='cd ..'                                    \
  ..='cd ..'                                      \
  ...='cd ../../'                                 \
  ....='cd ../../../'                             \
  .....='cd ../../../../'                         \
  cdf='$(__fzf_cd__)'                             \
  ff='sudo find / -name'                          \
  f='find . -name'                                \
  grep='grep --color=auto'                        \
  tmp='mc /tmp/$RANDOM'                           \
  mkdir='mkdir -pv'                               \
  rmd='rmdir'                                     \
  mkd='mkdir -pv'

alias \
  pacman='sudo pacman --color=auto'               \
  p='sudo pacman --color=auto'                    \
  i='sudo pacman --color=auto --needed -S'        \
  r='sudo pacman --color=auto -Rns'               \
  y='yay'                                         \
  ia='yay --color=auto -S'                        \
  ra='yay --color=auto -Rns'                      \
  anakin='sudo pacman -Rns --noconfirm $(pacman -Qtdq)'

alias \
  vi='v'                                          \
  vim='v'                                         \
  vimrc='"$EDITOR" "$HOME"/.config/nvim/init.vim' \
  vf='v $(fzf)'

alias \
  pls='sudo $(fc -ln -1)' \
  g='git'                 \
  ka='killall'            \
  firefox='~/.bin/firefox'\
  bt='bluetoothctl'       \
  :q='exit'               \
  :wq='exit'              \
  rc='recolorize'         \
  fac='cd ~/Documents/Facultad/Seg ; $(__fzf_cd__)'

alias \
  brightness='xrandr --output eDP-1 --brightness'                         \
  pharo='pharo $HOME/Pharo/Pharo8.0-SNAPSHOT-64bit-1b7a8d8.image &'       \
  activate='source venv/bin/activate'                                     \
  d='/usr/bin/git --git-dir=$HOME/.dotfiles --work-tree=$HOME' # Managing dotfiles

alias \
  us='setxkbmap -layout "us" -variant "intl" ; setxkbmap -option caps:swapescape'     \
  dvorak='setxkbmap -layout us -variant dvp -option compose:102 -option numpad:shift3 -option kpdl:semi -option keypad:atm -option caps:shift'    \
  colemakiso='xmodmap ~/.colemak-iso-standard'    \
  colemakansi='xmodmap ~/.colemak-ansi-shift-z'
