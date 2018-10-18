#!/bin/bash

self="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
source "$self/ask-for.sh"

function installCustom() {
    for customSetup in setup-*; do
    	./$customSetup
    done
}

ask-for "custom installation for ubuntu" "installCustom"
