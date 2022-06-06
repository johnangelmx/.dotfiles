#!/bin/bash

# Script for prepare Debian
export DEBIAN_FRONTEND=noninteractive
# Update linux
sudo apt-get autoremove -y
sudo apt-get upgrade -y

# Essentials
sudo apt-get install -y bash zsh zgen sudo wget git \
    make ca-certificates lsb-release \
    vim nano libbrotli-dev cmake \
    ccze jq less catimg \
    tldr curl httpie man neofetch \
    htop ncdu icdiff \
    unzip zip bzip2 p7zip-full \
    locales locales-all \
    bat exa lolcat

#
sudo apt-get autoremove -y
sudo apt-get upgrade -y
sudo apt-get update -y
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
echo " ____   _                                   _      _                                        _
|  _ \ (_)                                 (_)    | |            /\                        | |
| |_) | _   ___  _ __  __   __  ___  _ __   _   __| |  ___      /  \    _ __    __ _   ___ | |
|  _ < | | / _ \| '_ \ \ \ / / / _ \| '_ \ | | / _  | / _ \    / /\ \  | '_ \  / _  | / _ \| |
| |_) || ||  __/| | | | \ V / |  __/| | | || || (_| || (_) |  / ____ \ | | | || (_| ||  __/| |
|____/ |_| \___||_| |_|  \_/   \___||_| |_||_| \__,_| \___/  /_/    \_\|_| |_| \__, | \___||_|
                                                                                __/ |
                                                                               |___/" | lolcat
exec zsh
