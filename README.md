# marketplace-dotfiles

## Usage

* Ensure ssh key has been loaded

`./run.sh`

## Manual post-install steps

1. Open flycut, shifit -> ensure they start on startup.
1. Open Keyboard preferences > Shortcuts > Input Sources > untick "Select the previous input source" (or whatever is stealing ctrl+space from our tmux config). This start off unticked anyway, but will become ticked as soon as you add another input source (e.g. US layout)!
1. Hide the dock.
1. Speed up key repeat.
1. Reload tmux and shell.
1. Install TPM plugins (in tmux press prefix+I).
1. `rbenv` yourself a Ruby version.
1. `bash-it enable completion git bash-it system` and anything else you want.
1. `bash-it enable plugin base fzf git` and anything else you want.
1. `vim-update`. Not all plugins install unless the shell is interactive, for some reason.
