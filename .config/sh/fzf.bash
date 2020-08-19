#
# fzf.conf
#

[ -f /usr/share/fzf/completion.bash ] && . /usr/share/fzf/completion.bash
[ -f /usr/share/fzf/key-bindings.bash ] && . /usr/share/fzf/key-bindings.bash

export FZF_DEFAULT_COMMAND='rg --files --hidden'
export FZF_DEFAULT_OPTS="\
    --height 30% --layout reverse --info inline --border \
    --preview '[[ \$(file --mime {}) =~ binary ]] && echo {} is a binary file || bat --style=numbers --color=always --line-range :100 {}' \
    --preview-window right"
