#!/bin/bash

# Download every package in "$file" that contains it's link to the
# Arch Package Database

readonly file="$HOME/.docs/PACKAGES.md"
declare -a packages

while read -r line; do
  [ "${line: -2:-1}" = '/' ] && line="${line::-2}" || line="${line::-1}"
  packages+=("${line##*/}")
done <<< "$(grep -Eio '\(https://(aur\.)?archlinux\.org/packages.+\)' "$file")"

yes "" | paru -S --needed --skipreview "${packages[@]}"
