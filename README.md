# marketplace-dotfiles

## Usage

* Ensure ssh key has been loaded

`./run.sh`

## Manual post-install steps

1. Open flycut, shifit -> ensure they start on startup.
1. Speed up key repeat.
1. Reload tmux and shell.
1. Install TPM plugins (in tmux press prefix+I)
1. `bash-it enable completion git bash-it system` and anything else you want.
1. `bash-it enable plugin base fzf git` and anything else you want.
1. `vim-update`. Not all plugins install unless the shell is interactive, for some reason.
