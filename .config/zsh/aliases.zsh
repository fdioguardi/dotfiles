#
# aliases.zsh
#

alias \
  grep="grep --color=auto" \
  ls="ls --color"

abbr \
  chx="chmod +x" \
  f="find . -name" \
  ff="sudo find / -name" \
  l="ls -A --group-directories-first" \
  ll="ls -Agho --group-directories-first" \
  tmp="cd \"\$(mktemp -d)\"" \
  mkd="mkdir -pv" \
  tp="trash-put" \
  ...="cd ../../" \
  ....="cd ../../../" \
  .....="cd ../../../../"

abbr \
  p="paru" \
  i="yes \"\" | paru -S --needed" \
  r="paru -Rns" \
  ro="paru --clean --noconfirm && yes | topgrade -c" \
  u="yes | topgrade" \
  gpip="PIP_REQUIRE_VIRTUALENV=0 pip"

abbr \
  calc="noglob math" \
  cu="nmcli connection up" \
  g="git" \
  ka="killall" \
  pls="sudo \$(fc -ln -1)" \
  ncdu="ncdu -x --color=off" \
  rc="recolorize" \
  venv="source .venv/bin/activate"

alias vi="v" vim="v"
alias grun="java org.antlr.v4.gui.TestRig"

alias \
  \$= \
  brightness="xrandr --output \"\$(xrandr --query | grep -w connected | cut -f1 -d' ')\" --brightness" \
  b1="while killall redshift 2> /dev/null; do sleep 0.1; done; brightness 1" \
  d="/usr/bin/git --git-dir=\"\$XDG_DATA_HOME/dotfiles\" --work-tree=\"\$HOME\"" # Managing dotfiles

abbr qwerty="setxkbmap -layout us,us -variant intl,colemak_dh -option grp:win_space_toggle,ctrl:swapcaps,altwin:menu_win -model pc104"
