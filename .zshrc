# Fig pre block. Keep at the top of this file.
. "$HOME/.fig/shell/zshrc.pre.zsh"
export PATH=/usr/local/bin:$PATH
export PATH=$HOME/bin:$PATH

export DATE=$(date +%Y-%m-%d)

export ZSH=$HOME/.oh-my-zsh

# install: https://github.com/spaceship-prompt/spaceship-prompt
ZSH_THEME="spaceship"

COMPLETION_WAITING_DOTS="true"
HOMEBREW_NO_ENV_HINTS="false"

plugins=(
    brew
    git
    gh
    z
    taskwarrior
)

source $ZSH/oh-my-zsh.sh

export LANG=en_US.UTF-8

source ~/.aliases.sh

eval "$(fnm env --use-on-cd)"

# show task on start to avoid procrastinate
# task

# Fig post block. Keep at the bottom of this file.
. "$HOME/.fig/shell/zshrc.post.zsh"

