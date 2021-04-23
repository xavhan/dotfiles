Xav's Dotfiles
==============

Inspired from this article: https://dev.to/tgifelix/backup-your-dotfiles-with-version-control-239f

Do not edit dotfiles included in this repo, those are backed up from my machines

Install process (and copy my dotfiles)
--------------------------------------

```sh
git clone xavhan/dotfiles
# install the backup script
cp dotfiles/backup_dotfiles.sh ~/automated-scripts/backup_dotfiles.sh
# beware that below is going to overide your dotfiles
cp dotfiles/.vimrc ~/.vimrc
cp dotfiles/.taskrc ~/.taskrc
cp dotfiles/.gitconfig ~/.gitconfig
cp dotfiles/.zshrc ~/.zshrc
```

Backup process
--------------

Call the backup script when you want with the `dotsave` alias (see `.zshrc`)