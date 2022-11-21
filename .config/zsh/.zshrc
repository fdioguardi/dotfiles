#
# .zshrc
#

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
