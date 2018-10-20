#!/bin/bash


function installSlack() {
	default_version='3.3.3-0.1'
	echo ""
	echo ""

	read -p "Version to install empty for default ($default_version): " version 

	if [[ -z "$version" ]]; then
		version="$default_version"
	fi

        wget "https://downloads.slack-edge.com/linux_releases/slack-$version.fc21.x86_64.rpm"

	sudo dnf localinstall slack-*.rpm
	rm slack-*.rpm
}

self="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
source "$self/ask-for.sh"

ask-for "slack" "installSlack"
