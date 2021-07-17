#
# .zshrc
#

# Shell settings
stty -ixon
setopt autocd hist_ignore_dups interactive_comments prompt_subst
unsetopt nocaseglob

# Plugins
for file in /usr/share/zsh/plugins/*/*.plugin.zsh \
  "${XDG_DATA_HOME:-${HOME}/local/share}"/zsh/plugins/*/*.plugin.zsh; do
  [ -r "$file" ] && source "$file"
done

# Modules
for file in "${ZDOTDIR:-${HOME}/.config/zsh}"/*.zsh; do
  [ -r "$file" ] && source "$file"
done
unset file
