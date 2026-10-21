#
# settings.zsh
#

stty -ixon
setopt auto_cd
HISTFILE="${XDG_CACHE_HOME:-$HOME/.cache}/zsh/history"
HISTSIZE=1000
SAVEHIST=1000
setopt hist_fcntl_lock hist_ignore_dups share_history
setopt interactive_comments
setopt extended_glob glob_star_short null_glob numeric_glob_sort
setopt prompt_subst transient_rprompt
