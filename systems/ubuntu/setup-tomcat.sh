#!/bin/bash

function installTomcat() {
    major="7"
    minor="0"
    patch="42"

    version="$major.$minor.$patch"

    wget "https://archive.apache.org/dist/tomcat/tomcat-$major/v$version/bin/apache-tomcat-$version.tar.gz"
    sudo mkdir -p /opt/tomcat-7
    sudo tar xf *.tar.gz -C /opt/tomcat-7

    sudo ln -s apache-tomcat-$version current
    echo "export CATALINA_HOME=\"/opt/tomcat-7/current\"" >> ~/.zprofile
	rm -f *.tar.gz
}

self="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
source "$self/ask-for.sh"

ask-for "tomcat" "installTomcat"
