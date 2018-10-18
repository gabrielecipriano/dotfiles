#!/bin/bash

function ask-for() {
	application_name=$1
	installation_function=$2
	read -p "Do you wish to install $application_name (y/N)? " answer
	case ${answer:0:1} in
	    y|Y )
		eval $installation_function	
	    ;;
	    * )
	        echo "Skipping $application_name installation"
	    ;;
	esac
}
