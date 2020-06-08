pamac update
pamac install \
    git \
    fish \
    htop \
    vim \

# install starship
curl -fsSL https://starship.rs/install.sh | bash

# switch to fish shell
chsh -s /usr/bin/fish $USER

# copy dotfiles
cp ../dotfiles/.vimrc ~/.vimrc
cp ../dotfiles/starship.toml ~/.config/starship.toml
cp ../dotfiles/config.fish ~/.config/fish/config.fish
touch ~/.hushlogin

# install vscode
sudo snap install code --classic

# install TOR Browser
# download from website and unzip
sudo mv tor-browser_en-US /opt
/opt/tor-browser_en-US/start-tor-browser.desktop --register-app
