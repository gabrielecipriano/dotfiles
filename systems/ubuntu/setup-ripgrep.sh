#!/bin/bash

self="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
source "$self/ask-for.sh"
source "$self/install-github-release.sh"

function installRipgrep() {
	installGithubRelease "0.10.0/ripgrep_0.10.0_amd64" "BurntSushi/ripgrep"
}

ask-for "ripgrep" "installRipgrep"

