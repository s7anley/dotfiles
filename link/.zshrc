# Source all files in ~/.dotfiles/source/
local file
for file in ~/.dotfiles/source/*; do
  source "$file"
done

LANG=en_US
export PATH=/usr/local/bin:/usr/local/opt/php55/bin:~/.dotfiles/bin:$PATH:$HOME/.rvm/bin
