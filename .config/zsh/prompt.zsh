#
# prompt.zsh
#

PROMPT="%F{black}: "
PROMPT="${PROMPT}%F{blue}%1~ "
PROMPT="${PROMPT}%(?.%F{green}.%F{red}); "

right_prompt="%F{black};: '"
right_prompt="${right_prompt}%F{red}(%b)"
right_prompt="${right_prompt}%F{black}'"

# Enabling and setting git info var to be used in prompt config.
autoload -Uz vcs_info
zstyle ':vcs_info:*' enable git

# This line obtains information from the vcs.
zstyle ':vcs_info:git*' formats "${right_prompt}"
precmd() { vcs_info; }

unset right_prompt

RPROMPT='${vcs_info_msg_0_}'
