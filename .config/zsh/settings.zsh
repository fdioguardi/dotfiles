#
# settings.zsh
#

stty -ixon
setopt auto_cd
HISTFILE="${XDG_STATE_HOME:-$HOME/.local/state}/zsh/history"
[ -d "${HISTFILE:h}" ] || mkdir -p "${HISTFILE:h}"
HISTSIZE=50000
SAVEHIST=50000
setopt hist_fcntl_lock hist_ignore_dups hist_ignore_space hist_reduce_blanks share_history
setopt interactive_comments
setopt extended_glob glob_star_short null_glob numeric_glob_sort
setopt prompt_subst transient_rprompt
