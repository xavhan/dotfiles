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
alias gdd="gd dev"

alias gdpr="gdd --name-only | xargs code"

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

alias $="" # help copy paste snippets ;)

# Work
BASTIEN=Dollab
QUENTIN=quentin-tardivon
JAN=jpochyla
ARTHUR=Platane
alias review_bastien="gh pr edit --add-reviewer $BASTIEN"
alias review_quentin="gh pr edit --add-reviewer $QUENTIN"
alias review_jan="gh pr edit --add-reviewer $JAN"
alias review_arthur="gh pr edit --add-reviewer $ARTHUR"
alias review_everybody="gh pr edit --add-reviewer $BASTIEN,$QUENTIN,$JAN,$ARTHUR"

function forget() {                                                              
   history -d $(expr $(history | tail -n 1 | grep -oP '^\s*\d+') - 1);              
}
