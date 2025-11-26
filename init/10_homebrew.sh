# Install Homebrew.
if [[ ! "$(type -P brew)" ]]; then
  e_header "Installing homebrew"
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
fi

if [[ "$(type -P brew)" ]]; then
  e_header "Updating homebrew"
  brew doctor
  brew update

  e_header "Installing homebrew recipes"

  recipes=(
    bat
    difftastic
    eza
    fish
    fzf
    gh
    git
    jq
    jump
    k6
    k9s
    kubectx
    kubernetes-cli
    lazygit
    mise
  )

  list="$(to_install "${recipes[*]}" "$(brew list)")"
  if [[ "$list" ]]; then
    e_header "Installing homebrew recipes: $list"
    brew install $list
  fi
fi
