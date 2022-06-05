# Angel dotfiles

## Installation

```bash

cd ~/.dotfiles
bash install.sh
```

- Note: Do not run as root/sudo this file!

## Requisites

If you haven't a non-root user with sudo privileges, create it before run this script:

```bash
adduser angel --quiet
usermod -aG sudo angel
apt-get update -y && apt-get install -y sudo git
su angel
```
