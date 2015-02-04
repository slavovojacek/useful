#!/bin/bash

### @credits to https://github.com/samthebest

# Install brew
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# Install brew cask (makes it easier to install mac apps)
brew install caskroom/cask/brew-cask

# Install spectacle
brew cask install spectacle

# Install google-chrome
brew cask install google-chrome

# Install sublime-text
brew cask install sublime-text

# Install java
brew cask install java

# Install scala
brew install scala

# Install sbt
brew install sbt

# Install intellij-idea-ce (Community edition)
brew cask install intellij-idea-ce

# Install phpstorm
brew cask install phpstorm

# Install ifstat
brew cask install ifstat