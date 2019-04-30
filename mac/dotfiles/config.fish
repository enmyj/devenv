# to remove fish greeting
set fish_greeting

# aliases
function ll
    ls -lha
end

function repos
    cd ~/repos
end

# required in order to use "conda activate"
source /usr/local/anaconda3/etc/fish/conf.d/conda.fish
