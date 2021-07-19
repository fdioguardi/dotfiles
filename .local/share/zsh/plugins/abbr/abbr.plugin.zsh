#
# abbr.zsh
#

# declare a list of expandable aliases to fill up later
typeset -a _abbreviations
_abbreviations=()

# write a function for adding an alias to the list mentioned above
function abbr() {
  for abbreviation in "$@"; do
    alias "$abbreviation"
    _abbreviations+=("${abbreviation%%\=*}")
  done
}

# expand any aliases in the current line buffer
function expand-abbreviation() {
  set -o extendedglob
  if echo "⬛""${(j:⬛:)_abbreviations}""⬛" \
    | grep -q "⬛${LBUFFER##[[:blank:]]##}⬛" 2> /dev/null; then
    zle _expand_alias
    zle expand-word
  fi
  zle magic-space
}
zle -N expand-abbreviation

# Bind the space key to the expand-abbreviation function above, so that space
# will expand any expandable aliases
bindkey ' ' expand-abbreviation
bindkey '^ ' magic-space     # control-space to bypass completion
bindkey -M isearch " " magic-space     # normal space during searches

# A function for expanding any aliases before accepting the line as is and executing the entered command
expand-abbreviation-and-accept-line() {
  expand-abbreviation
  zle .backward-delete-char
  zle .accept-line
}
zle -N accept-line expand-abbreviation-and-accept-line
