# Source all files in ~/.dotfiles/source/
local file
for file in ~/.dotfiles/source/*; do
  source "$file"
done

export PATH=~/.dotfiles/bin:$PATH
