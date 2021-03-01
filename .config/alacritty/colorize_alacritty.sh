#!/bin/bash
# Update alacritty config to apply Xresources color scheme
# original source: https://www.reddit.com/r/unixporn/comments/8giij5/guide_defining_program_colors_through_xresources/dyfg9s3/

fill_indexed_placeholder() {
  local color
  color=$(getcolor "$1")
  sed -i "s/%cl${1}%/'${color}'/g" "$2"
}

fill_placeholders() {
  # Numbered colors
  for i in {0..15}
  do
    fill_indexed_placeholder "$i" "$1"
  done

  # Named colors
  sed -i "s/%clfg%/'$(getcolor foreground)'/g" "$1"
  sed -i "s/%clbg%/'$(getcolor background)'/g" "$1"
}

template="${XDG_CONFIG_HOME:-"$HOME/.config"}"/alacritty/colors.yml
tmp_file=/tmp/alacritty.tmp
target_file="${XDG_CONFIG_HOME:-"$HOME/.config"}"/alacritty/alacritty.yml

cp "$template" "$tmp_file"

fill_placeholders "$tmp_file"

cat \
  "${XDG_CONFIG_HOME:-"$HOME/.config"}"/alacritty/settings.yml \
  "$tmp_file" > "$target_file"

rm "$tmp_file"
