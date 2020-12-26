#
# .bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# Enable programmable completion features
[ -f /usr/share/bash-completion/bash_completion ] && \
  source /usr/share/bash-completion/bash_completion

# Enable git prompt support
[ -f /usr/share/git/completion/git-prompt.sh ] && \
  source /usr/share/git/completion/git-prompt.sh

# Prompt
PROMPT_COMMAND=__prompt_command # Func to gen PS1 after CMDs

__prompt_command()
{
    local EXIT="$?"             # This needs to be first

    local RCol='\[\e[0m\]'

    local BRed='\[\e[1;31m\]'
    local BGre='\[\e[1;32m\]'
    local BBlu='\[\e[1;34m\]'
    local Mag='\[\e[0;35m\]'

    local ExitCodeColor=''
    if [ $EXIT != 0 ]; then
        ExitCodeColor="${BRed}"      # Add red if exit code non 0
    else
        ExitCodeColor="${BGre}"
    fi

    PS1="${BBlu}\W ${Mag}$(__git_ps1 "(%s)")${ExitCodeColor} | ${RCol}"
}

# Shell settings
set -o braceexpand -o notify -o vi

shopt -s autocd cdspell cmdhist dirspell dotglob globstar histappend \
  interactive_comments lithist no_empty_cmd_completion nocaseglob \
  progcomp_alias shift_verbose

# Modules
for file in ${XDG_CONFIG_HOME:-$HOME/.config}/sh/*; do
  [ -f "$file" ] && source "$file"
done
unset file
