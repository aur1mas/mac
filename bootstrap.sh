#!/usr/bin/env bash

echo "Bootstraping your machine"

# Check for Homebrew, install if we don't have it
if test ! $(which brew); then
    echo "Installing homebrew..."
    ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

# Update homebrew recipes
brew update

PACKAGES=(
    git
    php
)

echo "Installing packages..."
brew install ${PACKAGES[@]}

echo "Cleaning up..."
brew cleanup

echo "Installing cask..."
CASKS=(
    iterm2
    slack
    spotify
    visual-studio-code
    google-chrome
    docker
)

echo "Installing cask apps..."
brew install --cask ${CASKS[@]}

echo "Creating folder structure..."
# create development directory
[[ ! -d ~/dev ]] && mkdir ~/dev

echo "Installing VSCode extensions"
code --install-extension bmewburn.vscode-intelephense-client
code --install-extension mblode.twig-language-2

echo "Bootstrapping complete"
