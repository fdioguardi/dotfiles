#!/bin/bash

usage()
{
  echo -ne "Usage: $( basename "$0" ) "
  echo -ne "[ --monitor NAME ] "
  echo -ne "[ --panel_side SIDE ] "
  echo -ne "[ --gaps NUM ] "
  echo -ne "[ --padding NUM ] "
  echo -e  "[ --panel-size NUM ]"
}

check_number()
{
  [ "$1" -ne "$1" ] 2> /dev/null && usage && exit 22
}

set_individual_padding()
{
  bspc config -m "$monitor" "${1}_padding" "$2"
}

set_padding()
{
  local general_padding=$((padding - win_gaps))

  for side in "${sides[@]}"; do
    if [ "$side" = "$panel_side" ]; then
        set_individual_padding "$side" "$((general_padding + panel_size))"
    else
        set_individual_padding "$side" "$general_padding"
    fi
  done
}

set_gaps()
{
  bspc config -m "$monitor" window_gap "$win_gaps"
}

declare -a sides=( "top" "bottom" "left" "right" )

while [ $# -gt 0 ]
do
  case "$1" in
  --gaps)
    check_number "$2"
    win_gaps=$2
    ;;

  --padding)
    check_number "$2"
    padding=$2
    ;;

  --panel-size)
    check_number "$2"
    panel_size=$2
    ;;

  --panel-side)
    [ "${sides[*]}" != "*$2*" ] && usage && exit 22
    ;;

  --monitor)
    monitor="$2"
    ;;

  *)
    usage && exit 22
    ;;

  esac
  shift 2
done

# Default values
win_gaps=${win_gaps:-"4"}
padding=${padding:-"10"}
panel_size=${panel_size:-"35"}
panel_side=${panel_side:-"bottom"}
monitor=${monitor:-$(xrandr --listactivemonitors \
  | grep "DP" \
  | awk 'NF {print $NF}')}

set_padding &
set_gaps &
