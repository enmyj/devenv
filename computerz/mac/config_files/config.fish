# make sure this is the actual anaconda path
set -U fish_user_paths /anaconda3/bin/ $fish_user_paths

# to remove fish greeting
set fish_greeting

# aliases
function ll
    ls -lha
end

function repos
    cd ~/repos
end
