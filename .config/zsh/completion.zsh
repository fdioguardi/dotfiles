#
# completion.zsh
#

autoload -Uz compinit
zstyle ':completion:*' menu select
zstyle ':completion:*' completer _expand_alias _complete _ignored
zstyle ':completion:*' matcher-list '' 'm:{a-zA-Z}={A-Za-z}' 'r:|[._-]=* r:|=*' 'l:|=* r:|=*'
zmodload zsh/complist
compinit -d "${XDG_CACHE_HOME:-${HOME}/.cache}/zsh/zcompdump"
_comp_options+=(globdots)

if command -v ngrok &>/dev/null; then
  eval "$(ngrok completion)"
fi
