#!/bin/bash
sudo apt get update -y && sudo apt get upgrade -y
sudo add-apt-repository ppa:git-core/ppa -y
# Escenciales
sudo apt-get install -y bash zsh zgen sudo wget git ca-certificates lsb-release \
    make ca-certificates lsb-release \
    vim nano \
    ccze nnn \
    less \
    tldr curl man neofetch \
    htop icdiff\
    unzip zip \
    bat exa 
# Re-Update
sudo apt-get update -y
sudo apt-get upgrade -y
# Fix batcat -> bat
sudo ln -s /usr/bin/batcat /usr/local/bin/bat
# Oh-my-zsh
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended
echo source $HOME/.dotfiles/.zshrc >>~/.zshrc
# Node/NPM/ install
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.1/install.sh | bash
source $HOME/.nvm/nvm.sh
nvm install --lts
# Change to ZSH
sudo chsh $USER -s /usr/bin/zsh

zsh
