#! /bin/bash
HOMEBREW=$(command -v brew)

if ! [ -x "$(command -v brew)" ]; then
  echo -e "Downloading and installing Homebrew 🍺"
  /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi


