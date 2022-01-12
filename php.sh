#!/usr/bin/env bash

echo 'Installs & add PHP configuration setup'

echo "Installing PHP & it's packages"
PACKAGES=(
    php
)

echo "Installing packages..."
brew install ${PACKAGES[@]}

echo "Cleaning up..."
brew cleanup

echo "Installing VSCode PHP extensions"
code --install-extension bmewburn.vscode-intelephense-client
code --install-extension mblode.twig-language-2