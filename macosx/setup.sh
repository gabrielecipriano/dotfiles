#!/bin/bash

#Installing brew
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

curl https://sh.rustup.rs -sSf | sh

brew unlink python
brew uninstall --ignore-dependencies python
brew unlink python@2
brew uninstall --ignore-dependencies python@2

brew upgrade \
    git \
    wget \
    coreutils


brew install \
  the_silver_searcher \
  terraform \
  watch \
  python \
  python3 \
  ruby \
  elixir \
  haskell-stack \
  cowsay \
  httpie \
  awscli \
  bat \
  lolcat

brew cask install docker
brew cask install firefox
brew cask install iterm2
brew cask install spotify
brew cask install intellij-idea-ce
brew cask install slack
brew cask install caskroom/versions/java8
brew cask install visual-studio
brew cask install visual-studio-code
brew cask install virtualbox
brew cask install virtualbox-extension-pack

brew cleanup
brew prune
