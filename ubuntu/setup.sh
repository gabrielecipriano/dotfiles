#!/bin/bash

self="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
parent=`realpath $self/../`

sudo apt-get update
sudo apt-get upgrade

sudo apt-get install -y \
	vim \
	zsh \
	git \
	xclip \
	snapd \
	chromium \
	haskell-platform \
	powerline-fonts

sudo snap install spotify 

$self/setup-java.sh
$self/setup-vscode.sh
$parent/symlinks.sh

echo "=== REMAINING STEP ==="
echo ""
echo "- install powerline fonts"
echo "- Set Solarized Dark as your theme in the terminal emulator"
echo "- chsh to zsh"
echo "- Run intellij-idea-community-from the command line to setup the IDE"
echo "- Reboot the system"
