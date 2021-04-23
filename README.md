Xav's Dotfiles
==============

Inspired from this article: https://dev.to/tgifelix/backup-your-dotfiles-with-version-control-239f

Do not edit dotfiles included in this repo, those are backed up from my machines

Current state of the script located in `~/automated-scripts/backup_dotfiles.sh` (do not forget to chmod +x it)

```sh
DOTFILES_FOLDER=~/dotfiles
cd $DOTFILES_FOLDER

# create a timestamp alias for the commit message
timestamp() {
  date +"%d-%m-%Y @ %T"
}
repo() {
  git config --get remote.origin.url
}

# files to backup
cp    ~/.taskrc $DOTFILES_FOLDER
cp    ~/.gitconfig $DOTFILES_FOLDER
cp    ~/.zshrc $DOTFILES_FOLDER
cp    ~/.vimrc $DOTFILES_FOLDER

# pull & push
if [[ `git status --porcelain` ]]; then
    git stash --quiet
    git pull --rebase --quiet
    git stash pop --quiet
    git add --all > /dev/null
    git commit -m "Update: $(timestamp)" --quiet
    git push --quiet
    echo "Dotfiles Updated on ( $(repo) )"
else
    echo "Nothin to update"
fi
```

Call it periodically with the `dotsave` alias (see `.zshrc`)