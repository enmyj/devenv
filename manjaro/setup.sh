pamac update
pamac install \
    git \
    fish \
    htop \
    vim

# install starship
curl -fsSL https://starship.rs/install.sh | bash

# switch to fish shell
chsh -s /usr/bin/fish $USER

# install vscode
sudo snap install code --classic

# copy dotfiles
pip3 install pyyaml click
python3 sync_dotfiles.py from_git

# install TOR Browser
# download from website and unzip
sudo mv tor-browser_en-US /opt
/opt/tor-browser_en-US/start-tor-browser.desktop --register-app
