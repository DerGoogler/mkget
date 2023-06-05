#!/bin/bash

OS="$(uname)"
if [[ "${OS}" == "Linux" ]]; then
  TAR_OPTS=""
  URL="https://github.com/izirku/mkget/releases/latest/download/mkget-x86_64-unknown-linux-gnu.tar.gz"
  SUBDIR="mkget-x86_64-unknown-linux-gnu"
elif [[ "${OS}" == "Darwin" ]]; then
  TAR_OPTS=" -"
  URL="https://github.com/izirku/mkget/releases/latest/download/mkget-x86_64-apple-darwin.tar.gz"
  SUBDIR="mkget-x86_64-apple-darwin"
else
  abort "mkget installation is currently supported only on macOS and Linux."
fi

curl -sL $URL | tar xz $TAR_OPTS -C /usr/local/bin --strip-components 1 "${SUBDIR}/mkget"
chmod +x /usr/local/bin/mkget
