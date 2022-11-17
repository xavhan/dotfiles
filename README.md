Xav's Dotfiles
==============

Inspired from this article: https://dev.to/tgifelix/backup-your-dotfiles-with-version-control-239f

Do not edit dotfiles included in this repo, those are backed up from my machines

[NEED TO BE REFRESHED] Install process (and copy my dotfiles)
--------------------------------------

```sh
# get brew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# add it to PATH
echo '# Set PATH, MANPATH, etc., for Homebrew.' >> /Users/xavierhaniquaut/.zprofile
echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> /Users/xavierhaniquaut/.zprofile
eval "$(/opt/homebrew/bin/brew shellenv)"

# get the repo
mkdir dev
cd dev
git clone https://github.com/xavhan/dotfiles

# install the backup script
cp dotfiles/backup_dotfiles.sh ~/backup_dotfiles.sh

# beware that below is going to overide your dotfiles
cp dotfiles/.vimrc ~/.vimrc
cp dotfiles/.gitconfig ~/.gitconfig
cp dotfiles/work.gitconfig ~/work.gitconfig
cp dotfiles/.zshrc ~/.zshrc
cp dotfiles/.aliases.sh ~/.aliases.sh
cp dotfiles/Brewfile ~/Brewfile

# start the install process
cd ~
brew bundle

# zsh as default shell
chsh -s /usr/local/bin/zsh

# install oh-my-zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```

Backup process
--------------

```sh
~/backup_dotfiles.sh <repo path>
#
~/backup_dotfiles.sh ~/dev/dotfiles
```
