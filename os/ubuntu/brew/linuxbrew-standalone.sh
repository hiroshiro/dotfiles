#!/bin/bash
set -eux

cd "$HOME"

# TODO: The next ln -s line breaks cross compiling with multiarch, need an alternative!
#       source: http://stackoverflow.com/a/9004026/99379
if [ ! -d "/usr/lib64" ]; then
  # Control will enter here if $DIRECTORY exists.
  sudo ln -s /usr/lib/x86_64-linux-gnu /usr/lib64
fi
sudo apt-get update -y
sudo apt-get update --fix-missing -y
sudo apt-get install build-essential curl g++ git m4 ruby texinfo libbz2-dev libcurl4-openssl-dev libexpat-dev libncurses-dev zlib1g-dev gawk make patch tcl -y

unset LD_LIBRARY_PATH PKG_CONFIG_PATH HOMEBREW_CC
PATH=$HOME/.linuxbrew/bin:/usr/local/bin:/usr/bin:/bin

if [ ! -d "$HOME/.linuxbrew" ]; then
  yes | ruby -e "$(curl -fsSL https://raw.github.com/Linuxbrew/linuxbrew/go/install)"
  # note that even if brew doctor is a little unhappy we want to keep going
  brew doctor || true
fi
brew install gcc --with-glibc
brew install git
brew tap homebrew/dupes
brew install coreutils findutils gawk gnu-sed gnu-which grep make ruby
PATH=$HOME/.linuxbrew/bin:$HOME/.linuxbrew/sbin
brew install hello && brew test hello; brew remove hello
