#!/bin/bash

function installIntellij() {
	default_version='2018.2.4'
	echo ""
	echo ""
	echo "Version to install empty for default ($version):"
	echo ""

	read -p "Version to install empty for default ($default_version): " version 

	if [[ -z "$version" ]]; then
		version="$default_version"
	fi
	
        wget "https://download.jetbrains.com/idea/ideaIC-$version.tar.gz"
        sudo tar xf *.tar.gz -C /opt/
        
        /opt/idea-*/bin/idea.sh
	rm -f *.tar.gz
}

self="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
source "$self/ask-for.sh"

ask-for "intellij" "installIntellij"
