# enable bash completion
if [ -f $(brew --prefix)/etc/bash_completion ]; then
. $(brew --prefix)/etc/bash_completion
fi

# style changes
export CLICOLOR=1

# required to use conda commands
# assumes conda is installed at /usr/local/anaconda3
export PATH="/usr/local/anaconda3/bin:$PATH"

# required for using "conda activate"
source /usr/local/anaconda3/etc/profile.d/conda.sh
conda activate base
