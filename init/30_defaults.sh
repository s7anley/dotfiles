# Install utiluti and configure default applications

UTILUTI_VERSION="1.3"
UTILITI_PATH="/usr/local/bin/utiluti"

if [[ ! -x "$UTILITI_PATH" ]]; then
  e_header "Installing utiluti"

  tmpdir=$(mktemp -d)
  curl -fsSL "https://github.com/scriptingosx/utiluti/releases/download/v${UTILUTI_VERSION}/utiluti-${UTILUTI_VERSION}.pkg" -o "$tmpdir/utiluti.pkg"
  sudo installer -pkg "$tmpdir/utiluti.pkg" -target /
  rm -rf "$tmpdir"
fi

if [[ -x "$UTILITI_PATH" ]]; then
  e_header "Configuring default applications"

  video_extensions=" mkv mk3d rmvb flv f4v webm ogm ogv ts mts m2ts avi wmv qt mov mpeg mpg mp4 m4v divx vob "
  ext_pattern='^file extension: ([a-z0-9]+)'
  uti_pattern='\(([^)]+)\)'

  while IFS= read -r line; do
    if [[ "$line" =~ $ext_pattern ]]; then
      ext="${BASH_REMATCH[1]}"
      if [[ "$video_extensions" == *" $ext "* ]]; then
        if [[ "$line" =~ $uti_pattern ]]; then
          uti="${BASH_REMATCH[1]}"
          current=$("$UTILITI_PATH" type "$uti" --bundle-id 2>/dev/null || true)
          if [[ "$current" != "com.colliderli.iina" ]]; then
            "$UTILITI_PATH" type set "$uti" com.colliderli.iina
          fi
        fi
      fi
    fi
  done < <("$UTILITI_PATH" app types com.colliderli.iina)
fi
