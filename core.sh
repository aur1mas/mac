#!/usr/bin/env bash

echo "Bootstraping your machine"

# Check for Homebrew, install if we don't have it
if test ! $(which brew); then
    echo "Installing homebrew..."
    ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

# Update homebrew recipes
echo 'Updating Brew'
brew update

echo 'Upgrading brew packages'
brew upgrade

PACKAGES=(
    git
)

echo "Installing packages..."
brew install ${PACKAGES[@]}

echo "Cleaning up..."
brew cleanup

echo 'Installing Rosetta 2'
# Dependacy for Microsoft Teams
sudo softwareupdate --install-rosetta

echo "Installing cask..."
CASKS=(
    google-chrome
    microsoft-teams
    slack
    spotify
    iterm2
    visual-studio-code
    docker
)

echo "Installing cask apps..."
brew install --cask ${CASKS[@]}

echo "Creating folder structure..."
# create development directory
[[ ! -d ~/dev ]] && mkdir ~/dev

echo "Bootstrapping complete"
