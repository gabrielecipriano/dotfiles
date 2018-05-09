#!/bin/bash

ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

git clone https://github.com/powerline/fonts.git --depth=1
cd fonts
./install.sh
cd ..
rm -rf fonts

brew install \
  the_silver_searcher \
  wget \
  watch \
  python \
  python3 \
  ruby \
  elixir \
  haskell-stack \
  git 

brew cask install docker
brew cask install iterm2
brew cask install spotify
brew cask install intellij-idea-ce
brew cask install slack
brew cask install caskroom/versions/java8

brew cleanup
brew prune
