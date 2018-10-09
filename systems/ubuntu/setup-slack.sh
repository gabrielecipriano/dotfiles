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

read -p "Do you wish to install slack (y/n)? " answer
case ${answer:0:1} in
    y|Y )
	installSlack	
    ;;
    * )
        echo "Skipping slack installation"
    ;;
esac

