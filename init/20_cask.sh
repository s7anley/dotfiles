if [[ "$(type -P brew)" ]]; then
  e_header "Installing cask applications"

  apps=(
    alt-tab
    arc
    iina
    marta
    orbstack
    raycast
    rectangle
    spotify
    the-unarchiver
    warp
  )

  list="$(to_install "${apps[*]}" "$(brew list --cask)")"
  if [[ "$list" ]]; then
    e_header "Installing applications: $list"
    brew install --cask $list
  fi
fi
