ZSH_THEME="agnoster"
plugins=(git colored-man-pages)

# Reload theme
source $ZSH/oh-my-zsh.sh

# Load plugins
source /usr/share/zgen/zgen.zsh
zgen load zsh-users/zsh-syntax-highlighting
zgen load zsh-users/zsh-autosuggestions
zgen load zsh-users/zsh-completions

source ~/.dotfiles/.aliases

export PAGER="less"

# node
export NVM_DIR=$HOME/.nvm
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"                   # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion" # This loads nvm bash_completion

# zoxide
eval "$(zoxide init zsh)"
rm ~/.zcompdump*
compinit

echo "$(cat $HOME/.dotfiles/banner)" | lolcat
