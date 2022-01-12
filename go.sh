#!/usr/bin/env bash

echo 'Install Go'

brew bundle --file GoBrewfile

echo "Cleaning up..."
brew cleanup