#!/bin/bash

self="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
parent=`realpath $self/../`

sudo apt-get update
sudo apt-get upgrade

sudo apt-get install \
	vim \
	zsh \
	git \
	xclip \
	snapd \
	haskell-platform \

chsh -s $(which zsh)

sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

$self/setup-vscode.sh
$parent/symlinks.sh

echo "=== REMAINING STEP ==="
echo ""
echo "- install powerline fonts"
echo "- Set Solarized Dark as your theme in the terminal emulator"
echo "- Run intellij-idea-community-from the command line to setup the IDE"
echo "- Reboot the system"
