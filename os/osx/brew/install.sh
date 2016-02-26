#!/bin/bash

source 'shell/utils.sh'

if ! cmd_exists 'brew'; then
  ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)" \
</dev/null
fi
