# Angel dotfiles

## Installation

```bash
git clone https://github.com/johnangelmx/.dotfiles.git ~/.dotfiles
cd ~/.dotfiles
bash install.sh
```

- Note: Do not run as root/sudo this file!

## Requisites

If you haven't a non-root user with sudo privileges, create it before run this script:

```bash
sudo adduser angel --quiet
sudo usermod -aG sudo angel
sudo apt-get update -y &&sudo apt-get install -y sudo git
sudo su angel
```
