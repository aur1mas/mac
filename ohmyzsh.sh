echo "OhMyZsh Setup & Configuration"

echo 'This file is not built for repeated runs. .zshrc will be populated with duplicates'

# Install Oh My Zsh
# https://ohmyz.sh/
if test ! $(which zsh); then
    echo "Installing Oh My Zsh..".
    sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
fi

echo "Configuring Oh My Zsh aliases"
touch ~/.zshrc
echo "g will be alias for git"
echo "alias g=git" >> ~/.zshrc

echo 'dc alias for docker compose'
echo "alias dc=docker compose" >> ~/.zshrc

echo 'b for brew'
echo "alias b=brew" >> ~/.zshrc

echo "search_in_file() { cat \$1 | grep \$2 }" >> ~/.zshrc

echo "dev() { cd ~/dev/\$1 }" >> ~/.zshrc