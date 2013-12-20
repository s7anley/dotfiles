#
# Editor settings
#

# Default editor
if ! type "subl" > /dev/null; then
	export EDITOR='subl -w'
	export LESSEDIT='subl %f'
	export VISUAL="$EDITOR"
else
	export EDITOR='vim'
fi

# Supporting more cooolors! :)
export TERM="xterm-256color"

# Quicker reload
alias reload=". ~/.zshrc && echo 'Config reloaded'"
alias zshrc="$EDITOR ~/.zshrc && reload"

# Fast directory switching
_Z_DATA=~/.dotfiles/caches/.z
. ~/.dotfiles/libs/z/z.sh