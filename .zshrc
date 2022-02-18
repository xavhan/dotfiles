export PATH=/usr/local/bin:$PATH
export PATH=$HOME/bin:$PATH

export DATE=$(date +%Y-%m-%d)

export ZSH=$HOME/.oh-my-zsh

# install: https://github.com/spaceship-prompt/spaceship-prompt
ZSH_THEME="spaceship"

COMPLETION_WAITING_DOTS="true"

plugins=(
    brew
    git
    gh
    z
    taskwarrior
)

source $ZSH/oh-my-zsh.sh

export LANG=en_US.UTF-8

source ~/.aliases

# show task on start to avoid procrastinate
task
