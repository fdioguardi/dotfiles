#!/bin/sh

# Load the same settings the display manager loads
[ -r "$HOME/.xprofile" ] && . "$HOME/.xprofile"

# Execute bspwm, everything else is started there
exec bspwm
