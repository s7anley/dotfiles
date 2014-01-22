#
# OH MY ZSH bootstraping
#

# Path to your oh-my-zsh configuration
ZSH="$HOME/.dotfiles/libs/oh-my-zsh"
ZSH_CUSTOM="$HOME/.zsh/custom"
ZSH_THEME="stanley"
DISABLE_AUTO_UPDATE="true"
DISABLE_AUTO_TITLE="true"
DISABLE_UNTRACKED_FILES_DIRTY="true"

plugins=(bower brew composer extract git-extras npm postgres symfony2 web-search)

# Load OH MY ZSH
source $ZSH/oh-my-zsh.sh
