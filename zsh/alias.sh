#
# Aliases
#
alias v='vim'
alias g='git'

alias ls='ls -Gwa'
alias lf='ls -Fa'
alias ll='ls -la'

alias du='du -h'
alias df='df -h'

alias su='su -l'

alias be='bundle exec'

#
# Git
#
alias -g B='`git branch | peco --prompt "GIT BRANCH>" | head -n 1 | sed -e "s/^\*\s*//g"`'
alias -g H='`curl -sL https://api.github.com/users/otofu-square/repos | jq -r ".[].full_name" | peco --prompt "GITHUB REPOS>" | head -n 1`'
alias -g LR='`git branch -r | peco --prompt "GIT REMOTE BRANCH" | head -n 1 | sed "s/^  \(.*\)\/\(.*\)/\2 \1\/\2/"`'