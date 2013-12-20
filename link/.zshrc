# Source all files in ~/.dotfiles/source/
local file
for file in ~/.dotfiles/source/*; do
  source "$file"
done

export PATH=$PATH:/home/stanley/.nave/installed/0.11.8/bin