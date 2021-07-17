#
# ins-sudo.zsh
#

# Add "sudo" at the start of the line when pressing <C-s>.
ins-sudo() {
  zle beginning-of-line
  zle -U "sudo "
}
zle -N ins-sudo ins-sudo && bindkey '^S' ins-sudo
