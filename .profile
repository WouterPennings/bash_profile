# Made by Wouter
# wouterpennings@gmail.com
# github.com/WouterPennings

# Color Constants
BLACK='\033[0;30m'
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[0;33m'
BLUE='\033[0;34m'
MAGENTA='\033[0;35m'
CYAN='\033[0;36m'
WHITE='\033[0;37m'
B_BLACK='\033[0;90m'
B_RED='\033[0;91m'
B_GREEN='\033[0;92m'
B_YELLOW='\033[0;93m'
B_BLUE='\033[0;94m'
B_MAGENTA='\033[0;95m'
B_CYAN='\033[0;96m'
B_WHITE='\033[0;97m'
NC='\033[0m'

# Functions
parse_git_branch() {
    git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

# Functions to start programs, and automatic disown so that when you close the ternimal, the program does not close.
# format: <name> <directory>
rider() {
    echo -e "${B_BLUE}Starting Program: ${B_WHITE}Jetbrains Rider"
    C:/Program\ Files/JetBrains/JetBrains\ Rider\ 2020.3.3/bin/rider64.exe ${1} & disown
}

webstorm() {
    echo "${B_BLUE}Starting Program: ${B_WHITE}Jetbrains WebStorm"
    C:/Program\ Files/JetBrains/WebStorm\ 2020.3.3/bin/webstorm64.exe ${1} & disown
}

pycharm() {
    echo "${B_BLUE}Starting Program: ${B_WHITE}Jetbrains PyCharm"
    C:/Program\ Files/JetBrains/PyCharm\ 2020.3.3/bin/pycharm64.exe ${1} & disown
}

idea() {
    echo "${B_BLUE}Starting Program: ${B_WHITE}Jetbrains IntelliJ IDEA"
    C:/Program\ Files/JetBrains/IntelliJ\ IDEA\ 2020.3.2/bin/idea64.exe ${1} & disown
}

goland() {
    echo "${B_BLUE}Starting Program: ${B_WHITE}Jetbrains GoLand"
    C:/Program\ Files/JetBrains/GoLand\ 2021.2.2/bin/goland64.exe ${1} & disown
}

# Alias's
alias la="ls -al"
alias cr="clear"
alias hs="history"
alias sep=" &  disown"

# Exports
export PS1="${B_MAGENTA}\!${B_GREEN}\$(parse_git_branch) \w -> ${NC} "  # "<line number> <git branch> <current location> -> "
export HISTFILESIZE=10000

