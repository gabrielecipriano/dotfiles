#!/bin/bash

function installVscode() {
	echo ""
	echo "In order to install Visual Studio Code visit: "
	echo ""
	echo "https://code.visualstudio.com/docs/?dv=linux64_deb"
	echo ""
	echo "Copy the download link"
	echo ""

	read -p "Link: " download_link 
	package_name="vscode.deb"
        wget -O "$package_name" "$download_link"

        sudo dpkg -i "$package_name"
        sudo apt-get install -f 
	rm -f  "$package_name"
}

self="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
source "$self/ask-for.sh"

ask-for "Visual Studio Code" "installVscode"
