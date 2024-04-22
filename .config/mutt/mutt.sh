#!/bin/sh

. "$XDG_CONFIG_HOME/Bitwarden CLI/secrets.sh"

export BW_SESSION="$(bw login --apikey --raw || bw unlock --raw)"

[ -z "$BW_SESSION" ] && exit 1

/usr/bin/neomutt "$@"
