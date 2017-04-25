#!/bin/bash

set -eux

cd "$HOME"
sudo apt-get update -y
sudo apt-get update --fix-missing -y
sudo apt-get install -qq build-essential curl git python-setuptools ruby

if ! cmd_exists 'brew'; then
  ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Linuxbrew/install/master/install)" \
</dev/null
fi

