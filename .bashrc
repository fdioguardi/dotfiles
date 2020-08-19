#
# .bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# Enable programmable completion features
[ -f /usr/share/bash-completion/bash_completion ] && . /usr/share/bash-completion/bash_completion

# Prompt
PROMPT_COMMAND=__prompt_command # Func to gen PS1 after CMDs

__prompt_command()
{
    local EXIT="$?"             # This needs to be first

    local RCol='\[\e[0m\]'

    local BRed='\[\e[1;31m\]'
    local BGre='\[\e[1;32m\]'
    local BBlu='\[\e[1;34m\]'

    local Color=''
    if [ $EXIT != 0 ]; then
        Color="${BRed}"      # Add red if exit code non 0
    else
        Color="${BGre}"
    fi

    PS1="${BBlu}\W${Color} | ${RCol}"
}

# Shell settings
set -o braceexpand -o notify -o vi

shopt -s autocd cdspell cmdhist dirspell dotglob globstar histappend interactive_comments lithist no_empty_cmd_completion nocaseglob progcomp_alias shift_verbose

# Functions
[ -f "${XDG_CONFIG_HOME:-$HOME/.config}"/sh/functions.bash ] && . "${XDG_CONFIG_HOME:-$HOME/.config}"/sh/functions.bash

# Aliases
[ -f "${XDG_CONFIG_HOME:-$HOME/.config}"/sh/aliases.bash ] && . "${XDG_CONFIG_HOME:-$HOME/.config}"/sh/aliases.bash

# Fzf
[ -f "${XDG_CONFIG_HOME:-$HOME/.config}"/sh/fzf.bash ] && . "${XDG_CONFIG_HOME:-$HOME/.config}"/sh/fzf.bash
