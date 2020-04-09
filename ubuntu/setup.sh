#!/bin/bash
set -e
set -o pipefail

# install packages using apt
sudo apt-get update && sudo apt-get install -y \
    git \
    vim \
    chromium-browser \
    rofi \
    spotify-client \
    gdebi \ 
    fish \
    htop \
    snapd

# logout so that snap will work
sudo gnome-session-quit

# install snap'd applications
sudo snap install hello-world
hello-world
sudo snap install vscode --classic
sudo snap install chromium
sudo snap install spotify
sudo snap install docker
sudo snap install signal-desktop
sudo snap install postman
sudo snap install google-cloud-sdk --classic

# install miniconda from website (multi-user for practice)
sudo addgroup anaconda
wget https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh -O ~/Downloads/miniconda.sh
sudo bash ~/Downloads/miniconda.sh # /opt/miniconda3
sudo chgrp -R anaconda /opt/miniconda3
sudo chmod 770 -R /opt/miniconda3
sudo usermod -aG anaconda $USER
rm ~/Downloads/miniconda.sh
conda init fish

# install R for Ubuntu 19.04 (disco)
sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys E298A3A825C0D65DFD57CBB651716619E084DAB9
sudo add-apt-repository 'deb https://cloud.r-project.org/bin/linux/ubuntu disco-cran35/'
sudo apt-get update && apt-get install -y r-base

# install Rstudio from website (no latest link?!)
wget -P ~/Downloads https://download1.rstudio.org/desktop/bionic/amd64/rstudio-1.2.1335-amd64.deb
sudo gdebi rstudio-1.2.1335-amd64.deb

# install keybase
wget -P ~/Downloads https://prerelease.keybase.io/keybase_amd64.deb
sudo apt install ~/Downloads/keybase_amd64.deb
run_keybase

# install hyper from website
wget -P ~/Downloads https://releases.hyper.is/download/deb
gdebi ~/Downloads/linux_deb
rm ~/Downloads/linux_deb

# copy dotfiles to appropriate places (and create any necessary directories)
cat ./dotfiles/.hushlogin > ~/.hushlogin
cat ./dotfiles/.vimrc > ~/.vimrc
cat ./dotfiles/.condarc > ~/.condarc
mkdir -p ~/.ssh/ && cat ./dotfiles/.ssh_config >> ~/.ssh/config

# switch to fish shell as default
# and install oh my fish
sudo echo $(which fish) >> /etc/shells
sudo chsh --shell `which fish` $USER
curl -L https://get.oh-my.fish | fish

# random fish setup
# VIM
# set -Ux EDITOR vim
# omf install lambda 
# omf theme lambda
