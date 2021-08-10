#
# .zshrc
#

# Shell settings
stty -ixon
setopt auto_cd hist_ignore_dups interactive_comments prompt_subst null_glob

# Plugins
for file in /usr/share/zsh/plugins/*/*.plugin.zsh \
  "${XDG_DATA_HOME:-${HOME}/local/share}"/zsh/plugins/*/*.plugin.zsh \
  /usr/share/fzf/key-bindings.zsh; do
  [ -r "$file" ] && source "$file"
done

# Modules
for file in "${ZDOTDIR:-${HOME}/.config/zsh}"/*.zsh; do
  [ -r "$file" ] && source "$file"
done
unset file
