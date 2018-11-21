
# install homebrew if not already installed
if [[ $(which brew) ]]; then 
    echo "Homebrew Already Installed"
else 
    /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi;

# brew install things specified in the Brewfile
brew bundle --file=./Brewfile
