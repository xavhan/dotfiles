# Fig pre block. Keep at the top of this file.
[[ -f "$HOME/.fig/shell/zshrc.pre.zsh" ]] && builtin source "$HOME/.fig/shell/zshrc.pre.zsh"
export PATH=/usr/local/bin:$PATH
export PATH=$HOME/bin:$PATH

export DATE=$(date +%Y-%m-%d)

export ZSH=$HOME/.oh-my-zsh

export LESS="-RFX"

# install: https://github.com/spaceship-prompt/spaceship-prompt
source "$HOME/.zsh/spaceship/spaceship.zsh"


COMPLETION_WAITING_DOTS="true"
HOMEBREW_NO_ENV_HINTS="false"

HISTORY_IGNORE="(ls|cd|pwd|exit|cd ..|..|...)"

plugins=(
    brew
    git
    gh
    z
    yarn
    taskwarrior
)

source $ZSH/oh-my-zsh.sh

export LANG=en_US.UTF-8

source ~/.aliases.sh

eval "$(fnm env --use-on-cd)"

_gt_yargs_completions()
{
  local reply
  local si=$IFS
  IFS=$'
' reply=($(COMP_CWORD="$((CURRENT-1))" COMP_LINE="$BUFFER" COMP_POINT="$CURSOR" /opt/homebrew/bin/gt --get-yargs-completions "${words[@]}"))
  IFS=$si
  _describe 'values' reply
}
compdef _gt_yargs_completions gt

# Fig post block. Keep at the bottom of this file.
[[ -f "$HOME/.fig/shell/zshrc.post.zsh" ]] && builtin source "$HOME/.fig/shell/zshrc.post.zsh"
