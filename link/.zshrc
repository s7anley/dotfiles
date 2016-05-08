# Source all files in ~/.dotfiles/source/
local file
for file in ~/.dotfiles/source/*; do
  source "$file"
done

if [[ -f ~/.custom.zsh ]]; then
    source  ~/.custom.zsh
fi

LANG=en_US
export PATH=/usr/local/bin:~/.dotfiles/bin:$PATH:$HOME/.rvm/bin
export PATH="/usr/local/sbin:$PATH"
export GVM_ROOT=/Users/jankosco/.gvm
source $GVM_ROOT/scripts/gvm-default

eval "$(thefuck --alias)"
