#!/bin/bash

self="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

echo "Welcome to the setup of Gabriele Cipriano dotfiles"
echo "This dotfiles currently support: "
for system in systems/*; do
	echo "- $system" | sed -e s/systems\\\///
done

echo ""
read -p "What system do you wish to install:? " system_to_install

echo "Executing $system_to_install setup files"

$self/systems/$system_to_install/setup.sh
$self/setup-common.sh

