#!/bin/bash

function installGithubRelease() {
	default_version=$1
	repository_location=$2
	echo ""
	echo ""
	echo "Installing a debian package from github releases"
	echo "repository location: $repository_location"
	echo ""
	echo ""

	read -p "Version to install empty for default ($default_version): " version 

	if [[ -z "$version" ]]; then
		version="$default_version"
	fi
	
        wget "https://github.com/$repository_location/releases/download/$version.deb"

        sudo dpkg -i *.deb
        sudo apt-get install -f 
	rm -f *.deb
}
