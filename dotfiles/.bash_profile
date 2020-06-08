# enable bash completion
if [ -f $(brew --prefix)/etc/bash_completion ]; then
. $(brew --prefix)/etc/bash_completion
fi

# style changes
export CLICOLOR=1

eval "$(starship init bash)"
