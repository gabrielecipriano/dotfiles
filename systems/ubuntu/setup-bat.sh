#!/bin/bash

self="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
source "$self/ask-for.sh"
source "$self/install-github-release.sh"


function installBat() {
	installGithubRelease "v0.7.1/bat_0.7.1_amd64" "sharkdp/bat"
}

ask-for "bat" "installBat"

