#!/bin/bash

sudo rpm --import https://packages.microsoft.com/keys/microsoft.asc
sudo sh -c 'echo -e "[code]\nname=Visual Studio Code\nbaseurl=https://packages.microsoft.com/yumrepos/vscode\nenabled=1\ngpgcheck=1\ngpgkey=https://packages.microsoft.com/keys/microsoft.asc" > /etc/yum.repos.d/vscode.repo'

dnf check-update
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
echo "=== JAVA INSTALLATION =="
echo "In order to install Oracle JDK visit: "
echo ""
echo "https://www.oracle.com/technetwork/java/javase/downloads/index.html"
echo ""
echo "accept the license agreement, and copy the download link of the appropriate Linux .rpm package"
echo ""

# wget --no-cookies --no-check-certificate --header "Cookie: gpw_e24=http%3A%2F%2Fwww.oracle.com%2F; oraclelicense=accept-securebackup-cookie" "$oracle_java_link"

echo "=== REMAINING STEP ==="
echo ""
echo "- Set Solarized Dark as your theme in the terminal emulator"
echo "- chsh to zsh"
