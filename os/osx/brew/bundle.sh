#!/bin/sh

brew bundle check >/dev/null 2>&1  || {
  echo "==> Installing Homebrew dependencies…"
  brew bundle
}
