#!/bin/bash

# query cht.sh
# zsh equivalent oneliner: cht() { curl cht.sh/${1}/${(j:+:)@:1}; }

# usage: cht.sh [ LANGUAGE ] [ QUESTION ]

# examples:
#   $ cht.sh go zip lists
#   $ cht.sh lua :learn

printf -v arguments '%s+' "${@:2}"
curl "https://cht.sh/${1}/${arguments%+}"
