#!/bin/bash

self="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

function createDirWithEmail() {
    dir=$1
    email=$2
    mkdir -p $dir
    echo "$email" > $dir/.gitemail
}

function setup-emails() {
    read -p "What is your personal email? " personal_email
    read -p "What is your company name? " company_name
    read -p "What is your company email? " company_email

    personal_ws="$HOME/personal"
    company_ws="$HOME/$company_name"

    createDirWithEmail $personal_ws $personal_email
    createDirWithEmail $company_ws $company_email
}


function ask-for() {
    action=$1
	installation_function=$2
	read -p "Do you wish to $action (y/N)? " answer
	case ${answer:0:1} in
	    y|Y )
		eval $installation_function
	    ;;
	    * )
	        echo "Skipping"
	    ;;
	esac
}

echo ""
echo "Setup of emails"
echo ""
ask-for "setup directories for personal and work code" "setup-emails"
