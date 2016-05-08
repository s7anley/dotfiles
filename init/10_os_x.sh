# Do not install on Ubuntu
[[ "$OSTYPE" =~ ^darwin ]] || return 1

# Install Homebrew.
if [[ ! "$(type -P brew)" ]]; then
  e_header "Installing Homebrew"
  true | ruby -e "$(curl -fsSL https://raw.github.com/mxcl/homebrew/go)"
fi

if [[ "$(type -P brew)" ]]; then
  e_header "Updating Homebrew"
  brew doctor
  brew update
  brew tap josegonzalez/homebrew-php


  # Install Homebrew recipes.
  recipes=(
    brew-cask
    composer
    coreutils
    icu4c
    git-extras
    midnight-commander
    siege
    ssh-copy-id
    thefuck
    tree
    wget
    zsh
  )

  list="$(to_install "${recipes[*]}" "$(brew list)")"
  if [[ "$list" ]]; then
    e_header "Installing Homebrew recipes: $list"
    brew install $list
  fi
fi

# Install Homebrew.
if [[ ! "$(type -P brew)" ]]; then
  e_header "Installing GVM"
  bash < <(curl -s -S -L https://raw.githubusercontent.com/moovweb/gvm/master/binscripts/gvm-installer)
fi
