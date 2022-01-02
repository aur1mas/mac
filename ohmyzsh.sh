echo "OhMyZsh Setup & Configuration"

# Install Oh My Zsh
# https://ohmyz.sh/
if test ! $(which zsh); then
    echo "Installing Oh My Zsh..".
    sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
fi

echo "Configuring Oh My Zsh aliases"
touch ~/.zshrc
echo "alias g=git" >> ~/.zshrc
echo "alias dc=docker-compose" >> ~/.zshrc
echo "search_in_file() { cat \$1 | grep \$2 }" >> ~/.zshrc
echo "dev() { cd ~/dev/\$1 }" >> ~/.zshrc