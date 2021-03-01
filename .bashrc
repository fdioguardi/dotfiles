#
# .bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# Shell settings
set -o braceexpand -o notify -o vi

shopt -s autocd cdspell cmdhist dirspell dotglob globstar histappend \
  interactive_comments lithist no_empty_cmd_completion nocaseglob \
  progcomp_alias shift_verbose

# Modules
for file in ${XDG_CONFIG_HOME:-$HOME/.config}/sh/*; do
  [ -r "$file" ] && source "$file"
done
unset file
