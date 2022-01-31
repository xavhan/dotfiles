export PATH=/usr/local/bin:$PATH
export PATH=$HOME/bin:$PATH

export DATE=$(date +%Y-%m-%d)

export ZSH=$HOME/.oh-my-zsh

ZSH_THEME="robbyrussell"

COMPLETION_WAITING_DOTS="true"
DISABLE_UPDATE_PROMPT="true"
export UPDATE_ZSH_DAYS=1

plugins=(
    brew
    git
    gh
    z
    taskwarrior
)

source $ZSH/oh-my-zsh.sh

export LANG=en_US.UTF-8

alias reload="source $HOME/.zshrc"
alias c="clear"
alias r="clear && reload"

alias bs="brew search"
alias bi="brew install"

alias gpub="git push --set-upstream origin $(git_current_branch)"
alias gres="git diff --name-only --diff-filter=U | uniq | xargs code"
alias gs="git show"
alias gst="git status -sb"
alias gfix="gcmsg fix"
alias grhh1="git reset HEAD~1 --hard"
alias gbD-="git branch -D @{-1}"

alias ct="clear && task"
alias tw="task add +work"
alias tp="task add +perso"
alias twork="task context work"
alias tperso="task context perso"
alias tres="task context none"

# alias dotsave="$HOME/automated-scripts/backup_dotfiles.sh"

# show task on start to avoid procrastinate
task
