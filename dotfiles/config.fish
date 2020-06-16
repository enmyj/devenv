# to remove fish greeting
set fish_greeting

# aliases
alias ll="ls -lha"
alias repos="cd ~/repos"
alias ci="code-insiders"


starship init fish | source


# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
eval /usr/local/anaconda3/bin/conda "shell.fish" "hook" $argv | source
# <<< conda initialize <<<

