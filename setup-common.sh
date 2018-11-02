#!/bin/bash

self="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

$self/symlinks.sh
touch $HOME/.system-custom
echo ""
echo ""

cat $self/remaining_steps.txt
