# Source all files in ~/.dotfiles/source/
local file
for file in ~/.dotfiles/source/*; do
  source "$file"
done

LANG=en_US
export PATH=/usr/local/bin:~/.dotfiles/bin:$PATH:$HOME/.rvm/bin
export PATH="/usr/local/sbin:$PATH"

eval "$(thefuck --alias)"
