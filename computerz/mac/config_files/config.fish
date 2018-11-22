# to remove fish greeting
set fish_greeting

# aliases
function ll
    ls -lha
end

function repos
    cd ~/repos
end

# required to use conda from command line
set -U fish_user_paths /anaconda3/bin/ $fish_user_paths

# required in order to use "conda activate"
source /anaconda3/etc/fish/conf.d/conda.fish
