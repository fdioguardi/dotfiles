#!/bin/bash

nb_color="BLACK"
ac_color="MAGENTA"
fb_color="BLUE"
pb_color="GREEN"

bspc config normal_border_color "$(getcolor $nb_color)"
bspc config active_border_color "$(getcolor $ac_color)"
bspc config focused_border_color "$(getcolor $fb_color)"
bspc config presel_feedback_color "$(getcolor $pb_color)"
