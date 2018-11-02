#!/bin/bash

self="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
root_folder=`realpath $self/../../`
source $root_folder/utils.sh

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
	chromium \
	haskell-platform \
	tilix \
    util-linux-user \
	powerline-fonts

sudo snap install spotify

$self/setup-java.sh
$root_folder/symlinks.sh

defineRemainingSteps <<EOT
=== REMAINING STEP ===

- Set Solarized Dark as your theme in the terminal emulator
- chsh to zsh
- Run intellij-idea-community-from the command line to setup the IDE
- Reboot the system
EOT
