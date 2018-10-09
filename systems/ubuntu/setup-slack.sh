#!/bin/bash



function installSlack() {
	default_version='3.3.3'
	echo ""
	echo ""

	read -p "Version to install empty for default ($default_version): " version 

	if [[ -z "$version" ]]; then
		version="$default_version"
	fi
	
        wget "https://downloads.slack-edge.com/linux_releases/slack-desktop-$version-amd64.deb"

        sudo dpkg -i *.deb
        sudo apt-get install -f 
	rm -f *.db
}

self="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
source "$self/ask-for.sh"

ask-for "slack" "installSlack"
