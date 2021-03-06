#!/bin/bash

echo "=== INSTALLING INTELLIJ-IDEA COMMUNITY EDITION"
sudo ln -s /var/lib/snapd/snap /snap
sudo snap install --classic --edge intellij-idea-community 

function installJava() {
	echo ""
	echo "In order to install Oracle JDK visit: "
	echo ""
	echo "https://www.oracle.com/technetwork/java/javase/downloads/index.html"
	echo ""
	echo "accept the license agreement, and copy the download link of the appropriate Linux .rpm package"
	echo ""

	read -p "Link: " oracle_java_link
	wget --no-cookies --no-check-certificate --header "Cookie: gpw_e24=http%3A%2F%2Fwww.oracle.com%2F; oraclelicense=accept-securebackup-cookie" "$oracle_java_link"

	sudo dnf localinstall jdk-*.rpm
	rm jdk-*.rpm
}

self="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
source "$self/ask-for.sh"

ask-for "java" "installJava"
