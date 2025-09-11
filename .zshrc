export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="robbyrussell"
plugins=(git)
plugins=(vi-mode)

source $ZSH/oh-my-zsh.sh

source /usr/share/fzf/completion.zsh
source /usr/share/fzf/key-bindings.zsh

alias config='/usr/bin/git --git-dir=$HOME/.void32 --work-tree=$HOME'
