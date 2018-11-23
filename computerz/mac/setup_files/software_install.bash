
# install homebrew if not already installed
if [[ $(which brew) ]]; then 
    echo "Homebrew Already Installed"
else 
    /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi;

# brew install things specified in the Brewfile
brew bundle --file=~/Brewfile

# Anaconda installation
# first 3 steps can also be performed using homebrew, but this is untested 
# and not listed anywhere obvious in documentation
wget https://repo.continuum.io/archive/Anaconda3-5.3.1-MacOSX-x86_64.sh
bash ~/Anaconda3-5.3.1-MacOSX-x86_64.sh -b -p ~/anaconda3
rm ~/Anaconda3-5.3.1-MacOSX-x86_64.sh
echo 'export PATH="~/anaconda3/bin:$PATH"' >> ~/.bash_profile # for using conda from command line
echo '. /anaconda3/etc/profile.d/conda.sh' >> ~/.bash_profile # for using conda environments
source ~/.bash_profile
conda update --all

# fish setup for anaconda
fish -c set -U fish_user_paths /anaconda3/bin/ $fish_user_paths
echo 'source /anaconda3/etc/fish/conf.d/conda.fish' >> ~/.config/fish/config.fish
