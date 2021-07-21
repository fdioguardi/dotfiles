#!/bin/bash

# Download every package in "$FILE" that contains it's link to the
# Arch Package Database

# Dependencies: pacman
# Installs: git ::: base-devel ::: an AUR helper (paru-bin) ::: everything else

set -e

readonly FILE="$HOME/.docs/PACKAGES.md"
readonly AUR_HELPER="paru"
readonly AUR_HELPER_PKG="paru-bin"
readonly INSTALLATION_ARGS="-S --needed --skipreview"

declare -a packages

while read -r line; do
  [ "${line: -2:-1}" = '/' ] && line="${line::-2}" || line="${line::-1}"
  packages+=("${line##*/}")
done <<< "$(grep -Eio '\(https://(aur\.)?archlinux\.org/packages.+\)' "$FILE")"

if ! which "$AUR_HELPER" &> /dev/null; then
  which git makepkg &> /dev/null \
    || sudo pacman -S --noconfirm --needed "base-devel" "git" \
    || { echo "$(basename "$0"): Error - Download git and base-devel" \
      && exit 65; }

  readonly dir
  dir="$(mktemp -d)"
  git clone "https://aur.archlinux.org/${AUR_HELPER_PKG}.git" "$dir"
  pushd "$dir" > /dev/null && yes "" | makepkg -si
  popd > /dev/null && rm -rf "$dir"
fi

yes "" | eval "${AUR_HELPER}" "${INSTALLATION_ARGS}" "${packages[@]}"
