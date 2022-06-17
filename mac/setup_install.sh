#!/bin/bash
set -e
set -o pipefail

SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"
cd $SCRIPT_DIR
cd ../

# copy dotfiles to appropriate places (and create any necessary directories)
cat dotfiles/.hushlogin >> ~/.hushlogin
cat dotfiles/.vimrc >> ~/.vimrc
cat dotfiles/.bash_profile >> ~/.bash_profile
cat dotfiles/.zshrc >> ~/.zshrc
cat dotfiles/starship.toml >> ~/.config/starship.toml
mkdir -p ~/.ssh/ && cat dotfiles/.ssh_config >> ~/.ssh/config

# Install homebrew if not already installed
if [[ $(which brew) ]]; then 
    echo "Homebrew Already Installed"
else 
    /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi;

# brew install things specified in the Brewfile
brew bundle --file=./dotfiles/Brewfile

# source the bash profile, just for fun
source ~/.zshrc
