# "Automated Mac Setup Script"

# copy dotfiles to appropriate places (and create any necessary directories)
echo "$(cat mac/dotfiles/.hushlogin)" >> ~/.hushlogin
echo "$(cat mac/dotfiles/.vimrc)" >> ~/.vimrc
echo "$(cat mac/dotfiles/.bash_profile)" >> ~/.bash_profile
echo "$(cat mac/dotfiles/.inputrc)" >> ~/.inputrc
echo "$(cat mac/dotfiles/.condarc)" >> ~/.condarc
echo "$(cat mac/dotfiles/.brewfile)" >> ~/.brewfile
mkdir -p ~/.ssh/ && echo "$(cat mac/dotfiles/.ssh_config)" >> ~/.ssh/config
mkdir -p ~/config/fish/ && echo "$(cat mac/dotfiles/config.fish)" >> ~/config/fish/config.fish

# Install homebrew if not already installed
if [[ $(which brew) ]]; then 
    echo "Homebrew Already Installed"
else 
    /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi;

# brew install things specified in the Brewfile
brew bundle --file=~/.brewfile

# source the bash profile
source ~/.bash_profile
