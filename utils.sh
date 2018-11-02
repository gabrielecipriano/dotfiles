#!/bin/bash

self="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

function defineRemainingSteps() {
    cat $1 > $self/remaining_steps.txt
}
