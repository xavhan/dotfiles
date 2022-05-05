Xav's Dotfiles
==============

Inspired from this article: https://dev.to/tgifelix/backup-your-dotfiles-with-version-control-239f

Do not edit dotfiles included in this repo, those are backed up from my machines

[NEED TO BE REFRESHED] Install process (and copy my dotfiles)
--------------------------------------

```sh
git clone xavhan/dotfiles
# install the backup script
cp dotfiles/backup_dotfiles.sh ~/backup_dotfiles.sh
# beware that below is going to overide your dotfiles
cp dotfiles/.vimrc ~/.vimrc
cp dotfiles/.gitconfig ~/.gitconfig
cp dotfiles/work.gitconfig ~/work.gitconfig
cp dotfiles/.zshrc ~/.zshrc
cp dotfiles/.aliases.sh ~/.aliases.sh
cp dotfiles/Brewfile ~/Brewfile
```

Backup process
--------------

```sh
~/backup_dotfiles.sh <repo path>
#
~/backup_dotfiles.sh ~/dev/dotfiles
```