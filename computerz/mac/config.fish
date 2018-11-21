# Fish/Iterm2 shell setup Instructions: 
# https://lobster1234.github.io/2017/04/08/setting-up-fish-and-iterm2/
# https://codeyarns.com/2014/02/27/how-to-create-alias-in-fish/
# https://blog.devopscomplete.com/fishing-with-bob-the-fish-2decd3a2f87

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
