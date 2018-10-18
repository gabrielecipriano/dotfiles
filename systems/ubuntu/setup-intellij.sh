#!/bin/bash

default_version='2018.2.4'
directory_name='ideaIC'
app_name='idea'

self="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

$self/install-jetbrains-app.sh $default_version $directory_name $app_name