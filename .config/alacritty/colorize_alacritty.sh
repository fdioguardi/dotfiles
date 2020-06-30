#!/bin/bash
# Update alacritty config to apply Xresources color scheme
# source: https://www.reddit.com/r/unixporn/comments/8giij5/guide_defining_program_colors_through_xresources/dyfg9s3/

# Target file
target_file="$HOME/.config/alacritty/alacritty.yml"

# copy input file to temporary file for black magic fuckery
# (alacritty applies colors when the config file is written, so we want to do it
# all in one write)
cp "$target_file".in "$target_file".tmp

# Grab colors from Xresources
#xrdb ~/.Xresources

# Numbered colors
for i in {0..15}
do
    color=$(getcolor "$i")
    sed -i "s/%cl${i}%/'${color}'/g" "$target_file".tmp
done

# Named colors
foreground=$(getcolor foreground)
background=$(getcolor background)
sed -i "s/%clfg%/'${foreground}'/g" "$target_file".tmp
sed -i "s/%clbg%/'${background}'/g" "$target_file".tmp

# Finally, replace target file with our updated one
rm "$target_file"
mv "$target_file".tmp "$target_file"
