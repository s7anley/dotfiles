# Path to your oh-my-zsh configuration
ZSH="$HOME/.zsh/oh-my-zsh"
ZSH_CUSTOM="$HOME/.zsh/custom"
ZSH_THEME="stanley"
DISABLE_AUTO_UPDATE="true"
DISABLE_AUTO_TITLE="true"
DISABLE_UNTRACKED_FILES_DIRTY="true"

plugins=(bower composer command-not-found debian extract git-extras npm symfony2 web-search)

# Load OH MY ZSH
source $ZSH/oh-my-zsh.sh

# Load dotfiles and jumper Z
for file in "$HOME/"{.aliases,.exports,.functions,bin/z.sh}; do
    [ -r "$file" ] && source "$file"
done
unset file