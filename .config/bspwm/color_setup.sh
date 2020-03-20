#!/bin/bash

color_path="$HOME/.cache/paintee"	#This has a list of every possible color. The values may change at startup or running recolorize

nb_color="BLACK"
ac_color="MAGENTA"
fb_color="BLUE"
pb_color="GREEN"

bspc config normal_border_color $(cat $color_path | grep -w $nb_color | cut -d'"' -f2)
bspc config active_border_color $(cat $color_path | grep -w $ac_color | cut -d'"' -f2)
bspc config focused_border_color $(cat $color_path | grep -w $fb_color | cut -d'"' -f2)
bspc config presel_feedback_color $(cat $color_path | grep -w $pb_color | cut -d'"' -f2)

