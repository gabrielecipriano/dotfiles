#!/bin/bash

self="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
root_folder=`realpath $self/../../`

sudo apt-get update
sudo apt-get upgrade

sudo apt-get install \
	vim \
	zsh \
	git \
	subversion \
	xclip \
	docker \
	node \
	npm \
	cowsay \
	lolcat \
	haskell-platform \
	tilix \
	fonts-powerline \

#OH-MY-ZSH
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

#rust
curl https://sh.rustup.rs -sSf | sh

$self/install-customs.sh

$root_folder/symlinks.sh

echo "=== REMAINING STEP ==="
echo ""
echo "- Set Solarized Dark as your theme in the terminal emulator"
echo "- Reboot the system"
