alias reload="source $HOME/.zshrc"
alias c="clear"
alias r="clear && reload"

alias bs="brew search"
alias bi="brew install"

alias gmc="git merge --continue"
alias gpub="git push --set-upstream origin $(git_current_branch)"
alias gres="git diff --name-only --diff-filter=U | uniq | xargs code"
alias gs="git show"
alias gst="git status -sb"
alias gfix="gcmsg 'fix: -'"
alias gprfix="gaa && gcmsg 'fix: apply pr feedbacks' && gp"
alias grhh1="git reset HEAD~1 --hard"
alias gbD-="git branch -D @{-1}"
alias gbclean='git fetch -p && git branch -vv | awk "/: gone]/{print \$1}" | xargs git branch -D'
alias gcblank='git commit -m "empty commit" --allow-empty'

alias ct="clear && task"
alias tw="task add +work"
alias tp="task add +perso"
alias twork="task context work"
alias tperso="task context perso"
alias tres="task context none"

alias cat="bat" # better cat

alias zshconfig="vim ~/.zshrc"
alias brewconfig="vim ~/Brewfile"
alias aliasconfig="vim ~/.aliases.sh"
alias gitconfig="vim ~/.gitconfig"

alias ws="yarn workspace"

# Work
alias chromatic="open -a Google\ Chrome 'https://www.chromatic.com/build?appId=61af1f14829b1e003adaeea8'"
alias staging_reset="gco master && git pull && gco staging && git reset --hard origin/master && gpf"
alias asktom="gh pr edit --add-reviewer tbekaert"

