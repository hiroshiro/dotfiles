#!/bin/bash

cmd_exists() {
    command -v "$1" &> /dev/null
    return $?
}

get_os() {

    declare -r OS_NAME="$(uname -s)"
    local os=''

    if [ "$OS_NAME" == "Darwin" ]; then
        os='osx'
    elif [ "$OS_NAME" == "Linux" ] && [ -e "/etc/lsb-release" ]; then
        os='ubuntu'
    else
        os="$OS_NAME"
    fi

    printf "%s" "$os"

}
