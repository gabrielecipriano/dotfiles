#!/bin/bash

self="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

sudo rpm --import https://packages.microsoft.com/keys/microsoft.asc
sudo sh -c 'echo -e "[code]\nname=Visual Studio Code\nbaseurl=https://packages.microsoft.com/yumrepos/vscode\nenabled=1\ngpgcheck=1\ngpgkey=https://packages.microsoft.com/keys/microsoft.asc" > /etc/yum.repos.d/vscode.repo'

sudo dnf check-update
sudo dnf install -y \
	code \
	vim \
	zsh \
	git \
	xclip \
	snapd \
	haskell-platform \
       	util-linux-user \
	powerline-fonts

sudo snap install spotify

$self/setup-java.sh

echo "=== REMAINING STEP ==="
echo ""
echo "- Set Solarized Dark as your theme in the terminal emulator"
echo "- chsh to zsh"
