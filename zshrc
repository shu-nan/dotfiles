# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# Customized zsh theme (~/.oh-my-zsh/themes/default.zsh-theme)
ZSH_THEME="default"

# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git)

source $ZSH/oh-my-zsh.sh

if [ -f ~/._shrc ]; then
  source ~/._shrc 
fi
