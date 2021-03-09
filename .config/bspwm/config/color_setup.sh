#!/bin/bash

bspc config normal_border_color "$(getcolor 'BLACK')"
bspc config active_border_color "$(getcolor 'MAGENTA')"
bspc config focused_border_color "$(getcolor 'BLUE')"
bspc config presel_feedback_color "$(getcolor 'GREEN')"
