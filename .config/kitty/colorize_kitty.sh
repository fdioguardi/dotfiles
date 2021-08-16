#!/bin/bash
# Update kitty's config to apply Xresources color scheme

fill_placeholders() {
  # Numbered colors
  for i in {0..15}; do
    sed -i "s/%cl${i}%/$(getcolor "$i")/g" "$1"
  done

  # Named colors
  sed -i "s/%clfg%/$(getcolor foreground)/g" "$1"
  sed -i "s/%clbg%/$(getcolor background)/g" "$1"
}

readonly template="${XDG_CONFIG_HOME:-"$HOME/.config"}"/kitty/colors.conf
readonly settings_file="${XDG_CONFIG_HOME:-"$HOME/.config"}"/kitty/settings.conf
target_file="${XDG_CONFIG_HOME:-"$HOME/.config"}"/kitty/kitty.conf
tmp_file="$(mktemp)"

cp "$template" "$tmp_file"

fill_placeholders "$tmp_file"

cat "$settings_file" "$tmp_file" > "$target_file"

rm "$tmp_file"
