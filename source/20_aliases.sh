# Packages
alias update='adg; sudo apt-get autoremove; aac; npm update -g npm; npm update -g;'

# General shortcuts for functions or apps
alias cl='clear'
alias g='git'
alias s='subl'
alias v='vim'

# Quicker development
alias hosts='sudo $EDITOR /etc/hosts'

# Enable aliases to be sudo’ed
alias sudo='sudo '

# Utils
alias timer='echo "Timer started. Stop with Ctrl-D." && date && time cat && date'
alias week='date +%V'