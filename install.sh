#!/bin/bash

# Script for prepare Debian

# Update linux
sudo apt-get autoremove -y
sudo apt-get upgrade -y

# Essentials
sudo apt-get install -y bash
sudo apt-get install -y zsh
sudo apt-get install -y zgen
sudo apt-get install -y sudo
sudo apt-get install -y wget
sudo apt-get install -y git
sudo apt-get install -y make
sudo apt-get install -y ca-certificates
sudo apt-get install -y lsb-release
sudo apt-get install -y vim nano libbrotli-dev cmake
sudo apt-get install -y ccze jq less catimg zoxide
sudo apt-get install -y tldr curl httpie man neofetch
sudo apt-get install -y htop gtop ncdu icdiff
sudo apt-get install -y unzip zip bzip2 p7zip-full
sudo apt-get install -y locales locales-all
sudo apt-get install -y bat exa lolcat
# Fix batcat -> bat
sudo ln -s /usr/bin/batcat /usr/local/bin/bat

# Oh-my-zsh
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended
echo source $HOME/.dotfiles/.zshrc >>~/.zshrc

# Node/NPM/PNPM install
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.1/install.sh | bash
source $HOME/.nvm/nvm.sh
nvm install --lts
npm install gtop -g

# Change to ZSH
sudo chsh -s /usr/bin/zsh

zsh
