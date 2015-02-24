#!/bin/bash

### Some credits go to https://github.com/samthebest

# Install brew
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# Before brew install, run brew doctor. If there is a problem with ownership,
# take it using $ sudo chown -R $USER /usr/local/{DIR}
#
# Make sure to run brew update and brew upgrade periodically

# Install ruby
brew install ruby

# Install Git
brew install git

# Install Ruby SASS
sudo gem install sass

# Install node
brew install node

# Install pow
brew install pow

# Install brew cask (makes it easier to install mac apps)
brew install caskroom/cask/brew-cask

# Install spectacle
brew cask install spectacle

# Install google-chrome
brew cask install google-chrome

# Install spotify (concentration)
brew cask install spotify

# Install sublime-text
brew cask install sublime-text

# Install intellij-idea-ce (Community edition)
brew cask install intellij-idea-ce

# Install phpstorm
brew cask install phpstorm

# Install ifstat
brew cask install ifstat

# Install java
brew cask install java

# Install scala
brew install scala

# Install sbt
brew install sbt

# Install imagemagick
brew install imagemagick

# Install wget
brew install wget
