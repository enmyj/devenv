# "Automated Mac Setup Script"
# Installs homebrew if not already installed
# Uses homebrew to install a bunch of software/packages
# installs Anaconda and appends required things to relevant config files

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
touch ~/.bash_profile
echo 'export PATH="/usr/local/anaconda3/bin:$PATH"' >> ~/.bash_profile # for using conda from command line
echo 'source /usr/local/anaconda3/etc/profile.d/conda.sh' >> ~/.bash_profile # for using conda environments
source ~/.bash_profile
conda update --all

# fish setup for anaconda
fish -c set -U fish_user_paths /anaconda3/bin/ $fish_user_paths
echo 'source /anaconda3/etc/fish/conf.d/conda.fish' >> ~/.config/fish/config.fish
