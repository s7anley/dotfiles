# Install Homebrew.
if [[ ! "$(type -P brew)" ]]; then
  e_header "Installing homebrew"
  true | ruby -e "$(curl -fsSL https://raw.github.com/mxcl/homebrew/go)"
fi

if [[ "$(type -P brew)" ]]; then
  e_header "Updating homebrew"
  brew doctor
  brew update

  e_header "Adding taps to homebrew"
  brew tap josegonzalez/homebrew-php

  recipes=(
    composer
    coreutils
    direnv
    git
    git-extras
    icu4c
    jq
    jump
    midnight-commander
    nave
    pgcli
    php-cs-fixer
    siege
    speedtest-cli
    ssh-copy-id
    terraform
    tflint
    thefuck
    tree
    wget
    zsh
  )

  list="$(to_install "${recipes[*]}" "$(brew list)")"
  if [[ "$list" ]]; then
    e_header "Installing homebrew recipes: $list"
    brew install $list
  fi
fi
