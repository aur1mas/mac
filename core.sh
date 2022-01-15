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

echo 'Installing Rosetta 2'
# Dependacy for Microsoft Teams
sudo softwareupdate --install-rosetta

# Install everything from Brewfile
brew bundle

echo "Cleaning up..."
brew cleanup

echo "Creating folder structure..."
# create development directory
[[ ! -d ~/dev ]] && mkdir ~/dev

echo "Configuring Mac..."

# Close any open System Preferences panes, to prevent them from overriding
# settings we’re about to change
osascript -e 'tell application "System Preferences" to quit'

# Automatically hide and show the Dock
defaults write com.apple.dock autohide -bool true

# Only Show Open Applications In The Dock
defaults write com.apple.dock static-only -bool true

echo "Mac has been configured."

echo "Bootstrapping complete"
