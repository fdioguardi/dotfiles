#   ____      _      ____     _   _    ____       ____
#U | __")uU  /"\  u / __"| u |'| |'|U |  _"\ u U /"___|
# \|  _ \/ \/ _ \/ <\___ \/ /| |_| |\\| |_) |/ \| | u
#  | |_) | / ___ \  u___) | U|  _  |u |  _ <    | |/__
#  |____/ /_/   \_\ |____/>> |_| |_|  |_| \_\    \____|
# _|| \\_  \\    >>  )(  (__)//   \\  //   \\_  _// \\
#(__) (__)(__)  (__)(__)    (_") ("_)(__)  (__)(__)(__)

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# Enable programmable completion features
[[ -f /usr/share/bash-completion/bash_completion ]] && . /usr/share/bash-completion/bash_completion

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

    PS1="${BBlu}\W${Color} > ${RCol}"
}

# Shell settings
set -o braceexpand -o notify -o vi

shopt -s autocd cdspell cmdhist dirspell dotglob globstar histappend interactive_comments lithist no_empty_cmd_completion nocaseglob progcomp_alias shift_verbose

# Avoid succesive duplicates in the bash command history
export HISTCONTROL=ignoredups

# Aliases
[[ -f ~/.bash_aliases ]] && source ~/.bash_aliases
