#!/bin/bash

default_version='183.3647.15'
directory_name='WebStorm'
app_name='webstorm'

self="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

$self/install-jetbrains-app.sh $default_version $directory_name $app_name
