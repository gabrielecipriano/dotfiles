#!/bin/bash

#Installing brew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

brew install \
  the_silver_searcher \
  watch \
  cowsay \
  bash \
  awscli \
  lolcat

brew install --cask docker
brew install --cask firefox
brew install --cask iterm2
brew install --cask spotify
brew install --cask jetbrains-toolbox

brew cleanup
brew prune
