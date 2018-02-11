if [[ ! "$(type -P brew)" ]]; then
  e_header "Installing GVM"
  bash < <(curl -s -S -L https://raw.githubusercontent.com/moovweb/gvm/master/binscripts/gvm-installer)
fi

if [[ "$(type -P nave)" ]]; then
  nave_stable="$(nave stable)"
  if [[ "$(node --version 2>/dev/null)" != "v$nave_stable" ]]; then
    e_header "Installing Node.js $nave_stable"
    # Install most recent stable version.
    nave install stable >/dev/null 2>&1
  fi
  if [[ "$(nave ls | awk '/^default/ {print $2}')" != "$nave_stable" ]]; then
    # Alias the stable version of node as "default".
    nave use default stable true
  fi
fi
