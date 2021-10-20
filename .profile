# Made by Wouter
# wouterpennings@gmail.com
# github.com/WouterPennings

# Functions
parse_git_branch() {
    git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

# Functions to start programs, and automatic disown so that when you close the ternimal, the program does not close.
# format: <name> <directory>
rider() {
    echo "Starting Program: Jetbrains Rider"
    C:/Program\ Files/JetBrains/JetBrains\ Rider\ 2020.3.3/bin/rider64.exe ${1} & disown
}

webstorm() {
    echo "Starting Program: Jetbrains WebStorm"
    C:/Program\ Files/JetBrains/WebStorm\ 2020.3.3/bin/webstorm64.exe ${1} & disown
}

pycharm() {
    echo "Starting Program: Jetbrains PyCharm"
    C:/Program\ Files/JetBrains/PyCharm\ 2020.3.3/bin/pycharm64.exe ${1} & disown
}

idea() {
    echo "Starting Program: Jetbrains IntelliJ IDEA"
    C:/Program\ Files/JetBrains/IntelliJ\ IDEA\ 2020.3.2/bin/idea64.exe ${1} & disown
}

goland() {
    echo "Starting Program: Jetbrains GoLand"
    C:/Program\ Files/JetBrains/GoLand\ 2021.2.2/bin/goland64.exe ${1} & disown
}

# Alias's
alias la="ls -al"
alias cr="clear"
alias hs="history"
alias sep=" &  disown"

# Exports
export PS1="\[\033[0;95m\]\!\[\033[0;92m\]\$(parse_git_branch) \w -> \[\033[0m\] "  # "<line number> <git branch> <current location> -> "
export HISTFILESIZE=10000
