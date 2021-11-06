#!/bin/sh
# https://unix.stackexchange.com/a/266761

command -v xclip > /dev/null 2>&1 \
  || { echo "Need command xclip. Aborting." >&2 && exit 65; }

[ -f "$1" ] || { echo "Error: Not a file." >&2 && exit 2; }

readonly TYPE && TYPE=$(file -b --mime-type "$1")
xclip -selection clipboard -t "$TYPE" < "$1"
