#!/bin/bash

default_version=$1
directory_name=$2
app_name=$3
path="https://download.jetbrains.com/$app_name/$directory_name"

function installJetBrainsApp() {
	echo ""
	echo ""

	read -p "Version to install empty for default ($default_version): " version

	if [[ -z "$version" ]]; then
		version="$default_version"
	fi

    wget "$path-$version.tar.gz"
    sudo tar xf *.tar.gz -C /opt/

    ls -lart /opt/$directory_name-*/bin
    /opt/"$directory_name"-*/bin/$app_name.sh
	rm -f *.tar.gz
}

self="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
source "$self/ask-for.sh"

ask-for "$app_name" "installJetBrainsApp"
