# install packages 
apt update && \
apt install -y \
    git \
    vim \
    chromium-browser \
    rofi \
    spotify-client \
    gdebi \ 
    fish

# install hyper
wget -P ~/Downloads https://hyper-updates.now.sh/download/linux_deb
gdebi ~/Downloads/linux_deb
rm ~/Downloads/linux_deb

# switch to fish shell as default
chsh -s 'which fish'
