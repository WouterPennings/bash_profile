# Made by Wouter
# wouterpennings@gmail.com
# github.com/WouterPennings

# Functions
parse_git_branch() {
    git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

# Commands
alias la="ls -al"
alias cr="clear"
alias hs="history"

# Exports
export PS1="\[\033[0;95m\]\!\[\033[0;92m\]\$(parse_git_branch) \w -> \[\033[0m\] "  # "<line number> <git branch> <current location> -> "
export HISTFILESIZE=10000
