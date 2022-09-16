# Fig pre block. Keep at the top of this file.
[[ -f "$HOME/.fig/shell/zshrc.pre.zsh" ]] && builtin source "$HOME/.fig/shell/zshrc.pre.zsh"
export PATH=/usr/local/bin:$PATH
export PATH=$HOME/bin:$PATH

export DATE=$(date +%Y-%m-%d)

export ZSH=$HOME/.oh-my-zsh

export LESS="-RFX"

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

#compdef gt
###-begin-gt-completions-###
#
# yargs command completion script
#
# Installation: /opt/homebrew/bin/gt completion >> ~/.zshrc
#    or /opt/homebrew/bin/gt completion >> ~/.zprofile on OSX.
#
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
###-end-gt-completions-###

# Fig post block. Keep at the bottom of this file.
[[ -f "$HOME/.fig/shell/zshrc.post.zsh" ]] && builtin source "$HOME/.fig/shell/zshrc.post.zsh"
