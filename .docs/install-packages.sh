#!/bin/bash

# Download every package in "$FILE" that contains it's link to the
# Arch Package Database

# Dependencies: pacman
# Installs: git ::: base-devel ::: an AUR helper (paru-bin) ::: everything else

set -e

readonly FILE="$HOME/.docs/PACKAGES.md"
readonly AUR_HELPER="paru"
readonly AUR_HELPER_PKG="paru-bin"
readonly INSTALLATION_ARGS=("-S" "--needed" "--skipreview")

declare -a packages

while read -r line; do
  line=${line//\/)/} && line=${line//)/} && packages+=("${line##*/}")
done <<< "$(grep -v '<!--.*-->' "$FILE" \
  | grep -Eio '\(https://(aur\.)?archlinux\.org/packages.+\)')"

if ! which "$AUR_HELPER" &> /dev/null; then
  which git makepkg &> /dev/null \
    || sudo pacman -S --noconfirm --needed "base-devel" "git" \
    || { echo "$0: Error - Download git and (or) base-devel" \
      && exit 65; }

  git clone "https://aur.archlinux.org/${AUR_HELPER_PKG}.git" "$(mktemp -d)"
  cd "$_" > /dev/null && yes "" | makepkg -si
  cd - > /dev/null
fi

yes "" | command "${AUR_HELPER}" "${INSTALLATION_ARGS[@]}" "${packages[@]}"
