#!/bin/bash



function installBat() {
	default_version='v0.7.1/bat_0.7.1_amd64'
	echo ""
	echo ""

	read -p "Version to install empty for default ($default_version): " version 

	if [[ -z "$version" ]]; then
		version="$default_version"
	fi
	
        wget "https://github.com/sharkdp/bat/releases/download/$version.deb"

        sudo dpkg -i *.deb
        sudo apt-get install -f 
	rm -f *.deb
}

self="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
source "$self/ask-for.sh"

ask-for "bat" "installBat"
