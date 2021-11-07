#
# prompt.zsh
#

PROMPT="%F{black};: "
PROMPT="${PROMPT}%F{blue}%1~ "
PROMPT="${PROMPT}%(?.%F{green}.%F{red});%f "

RPROMPT="%F{black};: '"
RPROMPT="${RPROMPT}%F{red}\${vcs_info_msg_0_}"
RPROMPT="${RPROMPT}%F{black}'%f"

autoload -Uz add-zsh-hook vcs_info

# Run vcs_info just before a prompt is displayed (precmd)
add-zsh-hook precmd vcs_info

# Enable checking for (un)staged changes, allowing use of %u and %c
zstyle ':vcs_info:*' check-for-changes true

# Set custom strings for unstaged changes (*) and staged changes (+)
zstyle ':vcs_info:*' unstagedstr ' *'
zstyle ':vcs_info:*' stagedstr ' +'

# Set the format of the Git information (stored at vcs_info_msg_0)
zstyle ':vcs_info:git:*' formats '(%b%u%c)'
zstyle ':vcs_info:git:*' actionformats '(%b|%a%u%c)'
