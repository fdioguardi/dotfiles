#!/bin/sh

STEP=20
SELECTION=$2
case "$1" in
  +) SHRINK_FLOATING=false ;;
  -) SHRINK_FLOATING=true ;;
  *) echo "Usage: $0 (+|-) (1|2|3|4)" && exit 1 ;;
esac

expand() {
  bspc node -z $(echo "left -$STEP 0,bottom 0 $STEP,top 0 -$STEP,right $STEP 0" | cut -d',' -f"$SELECTION")
}
contract() {
  bspc node -z $(echo "right -$STEP 0,top 0 $STEP,bottom 0 -$STEP,left $STEP 0" | cut -d',' -f"$SELECTION")
}

if bspc query -N -n focused.floating > /dev/null; then
  if $SHRINK_FLOATING; then
    contract
  else
    expand
  fi
else
  expand || contract
fi
