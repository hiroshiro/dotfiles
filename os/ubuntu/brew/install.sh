#!/bin/bash

source 'shell/utils.sh'

if ! cmd_exists 'brew'; then
  ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Linuxbrew/linuxbrew/go/install)" \
</dev/null
fi
