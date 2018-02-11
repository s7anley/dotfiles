if [[ "$(type -P brew)" ]]; then
  e_header "Adding cask taps to homebrew"
  brew tap caskroom/cask
  brew tap buo/cask-upgrade

  apps=(
    1password
    atom
    caffeine
    calibre
    dropbox
    evernote
    google-chrome
    firefox
    flux
    iterm2
    libreoffice
    mplayerx
    rcdefaultapp
    rdm
    soundcleod
    spectacle
    spotify
    the-unarchiver
    toggl
    tunnelblick
    utorrent
  )

  list="$(to_install "${apps[*]}" "$(brew cask list)")"
  if [[ "$list" ]]; then
    e_header "Installing applications: $list"
    brew cask install $list
  fi
fi
