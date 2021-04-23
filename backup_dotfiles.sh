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
# backup the script itself
cp    ~/automated-scripts/backup_dotfiles.sh $DOTFILES_FOLDER

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