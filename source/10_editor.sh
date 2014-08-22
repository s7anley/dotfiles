#
# Editor settings
#

# Supporting more cooolors! :)
export TERM="xterm-256color"

# Quicker reload
alias reload=". ~/.zshrc && echo 'Config reloaded'"
alias zshrc="$EDITOR ~/.zshrc && reload"

# Fast directory switching
_Z_DATA=~/.dotfiles/caches/.z
. ~/.dotfiles/libs/z/z.sh
