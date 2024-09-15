#
# functions.zsh
#

# create directory and cd inside
mc() { mkdir -pv "$@" && cd "${@:$#}" || return; }

# backup files/directories
bkp() { cp -r "$1"{,"_$(date +%Y-%m-%d_%H:%M:%S).bkp"}; }

# math operation with 5 decimals
math() { bc -l <<< "scale=6; $*"; }

# synchronic `killall`
die() { while killall "$1" 2> /dev/null; do ; done }

# open files with sudo if necessary
v() {
  if [ ! -e "$1" ] || [ "$(stat -c '%U' "$1")" = "$USER" ]; then
    "$EDITOR" "$@"
  else
    sudo -E "$EDITOR" "$@"
  fi
}

# open everything
o() {
  case "$(file -ib "$1")" in
    */dir*) cd "$1" || return ;;
    *video* | *gif*)
      mpv "$1" &
      disown
      ;;
    *image*)
      feh "$1" &
      disown
      ;;
    *audio*) mpv "$1" ;;
    */epub+zip* | *pdf*)
      zathura "$1" &
      disown
      ;;
    */zip*) unzip "$1" ;;
    *x-tar*) tar xf "$1" ;;
    *x-rar*) unrar x "$1" ;;
    *html*)
      "$BROWSER" "$1" &
      disown
      ;;
    *) v "$1" ;;
  esac
}
