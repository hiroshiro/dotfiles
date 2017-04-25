#!/bin/bash

set -eux

cd "$HOME"
sudo apt-get update -y
sudo apt-get update --fix-missing -y
sudo apt-get install -qq build-essential curl git python-setuptools ruby
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Linuxbrew/install/master/install)"
