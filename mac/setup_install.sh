#!/bin/bash
set -e
set -o pipefail

# "Automated Mac Setup Script"

# copy dotfiles to appropriate places (and create any necessary directories)
cat mac/dotfiles/.hushlogin >> ~/.hushlogin
cat mac/dotfiles/.vimrc >> ~/.vimrc
cat mac/dotfiles/.bash_profile >> ~/.bash_profile
cat mac/dotfiles/.inputrc >> ~/.inputrc
cat mac/dotfiles/.condarc >> ~/.condarc
cat mac/dotfiles/.brewfile >> ~/.brewfile
mkdir -p ~/.ssh/ && cat mac/dotfiles/.ssh_config >> ~/.ssh/config
mkdir -p ~/config/fish/ && cat mac/dotfiles/config.fish >> ~/config/fish/config.fish

# Install homebrew if not already installed
if [[ $(which brew) ]]; then 
    echo "Homebrew Already Installed"
else 
    /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi;

# brew install things specified in the Brewfile
brew bundle --file=~/.brewfile

# source the bash profile, just for fun
source ~/.bash_profile

# switch to fish shell as default
echo $(which fish) >> /etc/shells
chsh -s `which fish`

# install oh my fish
curl -L https://get.oh-my.fish | fish
