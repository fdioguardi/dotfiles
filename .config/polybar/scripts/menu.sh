#!/bin/sh

usage() {
  echo "Usage: $0 [launcher|sysmenu]" && exit "$1"
}

sysmenu() {
  case "$(printf "Shut down\nReboot\nSuspend\nHibernate\nCancel" \
    | dmenu "$@")" in
    *Shut\ down) shutdown -P now "Shutting down..." ;;
    *Reboot) shutdown -r now "Rebooting..." ;;
    *Suspend) systemctl suspend ;;
    *Hibernate) systemctl hibernate ;;
    *Cancel) exit 0 ;;
  esac
}

launcher() {
  "$(dirname "$0")"/dmenu_run_history "$@"
}

[ "$#" != 1 ] && usage 1
[ "$1" != "launcher" ] && [ "$1" != "sysmenu" ] && usage 22

"$1" -i -fn "Noto Sans-18" -nb "$(getcolor background)" \
  -nf "$(getcolor foreground)" -sb "$(getcolor yellow)" \
  -sf "$(getcolor background)"
