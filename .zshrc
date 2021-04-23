export VOLTA_HOME="$HOME/.volta"
export PATH=$HOME/bin:/usr/local/bin:$VOLTA_HOME/bin:$PATH
export ZSH=$HOME/.oh-my-zsh

ZSH_THEME="robbyrussell"

ENABLE_CORRECTION="true"
COMPLETION_WAITING_DOTS="true"
DISABLE_UPDATE_PROMPT="true"
export UPDATE_ZSH_DAYS=1


plugins=(
    brew
    git
    github
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

alias ct="clear && task"
alias tw="task add +work"
alias tp="task add +perso"
alias twork="task context work"
alias tperso="task context perso"
alias tres="task context none"

alias dotsave="$HOME/automated-scripts/backup_dotfiles.sh"

alias npm="nocorrect npm"
alias yarn="nocorrect yarn"
