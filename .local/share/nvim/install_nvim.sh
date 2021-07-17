#!/bin/sh

# Install neovim from source

# Usage:
#   ./install_nvim.sh           --> update
#   ./install_nvim.sh -r        --> reinstall

set -o errexit
set -o nounset

source_location="${XDG_DATA_HOME:-$HOME/.local/share}/nvim/source"
bin_location="${HOME}/.local/nvim"
remote="https://github.com/neovim/neovim.git"
branch="master"

usage() {
  echo "Usage: ./$0 [-r]" >&2
}

build_nvim() {
  make -C "$source_location" \
    CMAKE_EXTRA_FLAGS="-DCMAKE_INSTALL_PREFIX=$bin_location" \
    CMAKE_BUILD_TYPE="RelWithDebInfo" install
}

[ $# -gt 1 ] && usage && exit 22

if [ $# -eq 1 ]; then
  if [ "$1" = "-r" ] || [ "$1" = "--reinstall" ]; then
    printf "neovim: Are you sure you want to remove %s? [y/N] " "$source_location"
    read -r delete_confirmation
    if [ "$delete_confirmation" = "y" ]; then
      rm -rf "$source_location" \
        && echo "neovim: $source_location has been deleted"
    else
      echo "neovim: exiting"
      exit
    fi
  else
    usage && exit 22
  fi
fi

if [ ! -d "$source_location" ]; then
  git clone -b "$branch" --single-branch "$remote" "$source_location" \
    && build_nvim

  exit 0
fi

(
  cd "$source_location"

  if [ -z "$(git status --porcelain)" ]; then
    echo "neovim: Working directory clean"
  else
    echo "neovim: Uncommitted changes, stashing changes.."
    git stash --include-untracked
  fi

  git switch "$branch" > "/dev/null" 2>&1
  git fetch
  if [ "$(git rev-parse HEAD)" = "$(git rev-parse '@{u}')" ]; then
    echo "neovim: HEAD and upstream identical"
  else
    echo "neovim: HEAD and upstream different"
    echo "neovim: building.."
    git merge origin/master && build_nvim
    echo "neovim: completed"
  fi
)
