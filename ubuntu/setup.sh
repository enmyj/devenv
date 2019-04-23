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

# install hyper from website
wget -P ~/Downloads https://hyper-updates.now.sh/download/linux_deb
gdebi ~/Downloads/linux_deb
rm ~/Downloads/linux_deb

# install miniconda from website
wget https://repo.continuum.io/miniconda/Miniconda3-latest-Linux-x86_64.sh -O ~/miniconda.sh
bash ~/miniconda.sh -b -p ~/miniconda 
rm ~/miniconda.sh

echo "source (conda info --root)/etc/fish/conf.d/conda.fish" >> /home/enmyj/.config/fish

# install vscode (copied from website)
# https://code.visualstudio.com/docs/setup/linux#_installation
curl https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > microsoft.gpg
sudo install -o root -g root -m 644 microsoft.gpg /etc/apt/trusted.gpg.d/
sudo sh -c 'echo "deb [arch=amd64] https://packages.microsoft.com/repos/vscode stable main" > /etc/apt/sources.list.d/vscode.list'

sudo apt-get install apt-transport-https
sudo apt-get update
sudo apt-get install -y code # or code-insiders

# switch to fish shell as default
chsh -s 'which fish'

# install oh my fish
curl -L https://get.oh-my.fish | fish

# set theme to bira
omf install bira
omf theme bira

