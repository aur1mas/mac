#!/usr/bin/env bash

echo 'Install Go'

PACKAGES=(
    go
)

echo "Installing packages..."
brew install ${PACKAGES[@]}

echo "Cleaning up..."
brew cleanup