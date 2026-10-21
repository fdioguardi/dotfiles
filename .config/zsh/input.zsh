#
# input.zsh
#

bindkey -v
bindkey -v '^?' backward-delete-char
export KEYTIMEOUT=1

bindkey '^[[3~' delete-char
bindkey -a '^[[3~' delete-char

# fzf's keybindings, with <C-f> to cd into a directory
if [ -r /usr/share/fzf/key-bindings.zsh ]; then
  source /usr/share/fzf/key-bindings.zsh
  bindkey -M emacs '^F' fzf-cd-widget
  bindkey -M vicmd '^F' fzf-cd-widget
  bindkey -M viins '^F' fzf-cd-widget
fi
