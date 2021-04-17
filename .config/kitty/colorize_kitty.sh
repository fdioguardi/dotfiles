#!/bin/bash
# Update kitty's config to apply Xresources color scheme

fill_indexed_placeholder() {
  local color
  color=$(getcolor "$1")
  sed -i "s/%cl${1}%/${color}/g" "$2"
}

fill_placeholders() {
  # Numbered colors
  for i in {0..15}
  do
    fill_indexed_placeholder "$i" "$1"
  done

  # Named colors
  sed -i "s/%clfg%/$(getcolor foreground)/g" "$1"
  sed -i "s/%clbg%/$(getcolor background)/g" "$1"
}

template="${XDG_CONFIG_HOME:-"$HOME/.config"}"/kitty/colors.conf
tmp_file=/tmp/kitty.tmp
target_file="${XDG_CONFIG_HOME:-"$HOME/.config"}"/kitty/kitty.conf
settings_file="${XDG_CONFIG_HOME:-"$HOME/.config"}"/kitty/settings.conf

cp "$template" "$tmp_file"

fill_placeholders "$tmp_file"

cat "$settings_file" "$tmp_file" > "$target_file"

rm "$tmp_file"
