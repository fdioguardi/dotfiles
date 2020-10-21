#
# functions.bash
#

# create directory and cd inside
mc() { mkdir -pv "$1" && cd "$1" || return; }

# backup files/directories
bkp() { cp -r "$1" "$1_$(date +%Y-%m-%d_%H:%M:%S).bk"; }

# math operation with 5 decimals
calc() { echo "scale=5; $*" | bc; }

# open files with sudo if necessary
v()
{
  if [ ! -e "$1" ] || [ "$(stat -c '%U' "$1")" = "$USER" ]; then
    "$EDITOR" "$@"
  else
    sudo -E "$EDITOR" "$@"
  fi
}

# open everything
o()
{
  case "$(file -ib "$1")" in
    */dir*)             cd "$1" || return ;;
    *video*|*gif*)      mpv "$1" & disown ;;
    *image*)            feh "$1" & disown ;;
    *audio*)            mpv "$1" ;;
    */epub+zip*|*pdf*)  zathura "$1" ;;
    */zip*)             unzip "$1" ;;
    *x-tar*)            tar xf "$1" ;;
    *x-rar*)            unrar x "$1" ;;
    *html*)             $BROWSER "$1" ;;
    *http*)
      curl -Ls "$1" -o "/tmp/${1##*/}"
      o     "/tmp/${1##*/}"
      rm -f "/tmp/${1##*/}"
      ;;
    *)                  v "$1" ;;
  esac
}
