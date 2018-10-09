#!/bin/bash


function installSpotify() {
	sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 931FF8E79F0876134EDDBDCCA87FF9DF48BF1C90
	
	echo deb http://repository.spotify.com stable non-free | sudo tee /etc/apt/sources.list.d/spotify.list
	
	sudo apt-get update
	
	sudo apt-get install spotify-client

	sudo sed -i 's/Exec=spotify %U/Exec=spotify --force-device-scale-factor=2 %U/g' /usr/share/applications/spotify.desktop
}

self="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
source "$self/ask-for.sh"

ask-for "spotify" "installSpotify"
