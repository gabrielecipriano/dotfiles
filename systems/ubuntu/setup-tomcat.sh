#!/bin/bash

function installTomcat() {
    major="7"
    minor="0"
    patch="42"

    version="$major.$minor.$patch"
    tomcat_location="$HOME/tomcat-7"

    wget "https://archive.apache.org/dist/tomcat/tomcat-$major/v$version/bin/apache-tomcat-$version.tar.gz"
    mkdir -p $tomcat_location
    tar xf *.tar.gz -C $tomcat_location

    ln -s  $tomcat_location $HOME/apache-tomcat-$version
    echo "export CATALINA_HOME=\"$tomcat_location/current\"" >> ~/.zprofile
	rm -f *.tar.gz
}

self="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
source "$self/ask-for.sh"

ask-for "tomcat" "installTomcat"
