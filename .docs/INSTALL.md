# Installation

This is a git bare repository, which means it's been created without a working tree.
It takes a few more steps than usual to get it running.

## How to clone

Fetch the repository:

```bash
alias d='/usr/bin/git --git-dir="$HOME"/.local/share/dotfiles --work-tree="$HOME"'
git clone --bare "https://www.github.com/fdioguardi/dotfiles" "$HOME/.local/share/dotfiles"
d checkout
d config --local status.showUntrackedFiles no
```

1. Define an alias to work with the git bare repository.

2. Clone the repository itself into `$HOME/.local/share/.dotfiles`.
   The name of this folder is unimportant,
   as long as it's consistent to the name given in the first command.

3. Fetch remote files.
   This command will fail if there are any local files with identical
   names to the ones in the repository.
   Back up and remove those files, then execute this command again.

4. Prevent untracked files from showing when running `d status`.

## After cloning

The repository was cloned using HTTPS.
Now, [generate a new SSH key](https://docs.github.com/en/github/authenticating-to-github/generating-a-new-ssh-key-and-adding-it-to-the-ssh-agent),
check it works running `ssh -T git@github.com`,
and tell the repository to use it with `git remote set-url origin git@github.com:fdioguardi/dotfiles.git`.

## Dependencies

This dotfiles require [many packages](./PACKAGES.md) to work properly.
They can be installed by running [this script](./install-packages.sh):
`"$HOME"/.docs/install-packages.sh`,
which downloads an AUR helper and uses it to get everything else.
