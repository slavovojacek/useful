#!/bin/bash

# Install brew
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# Before brew install, run brew doctor. If there is a problem with ownership,
# take it using $ sudo chown -R $USER /usr/local/{DIR}
#
# Make sure to run brew update and brew upgrade periodically

brew install caskroom/cask/brew-cask # Makes it easier to install mac apps

# Makes it easier to update when installed via Homebrew
brew install git
brew install node
brew install python
brew install ruby

brew cask install java
brew install scala

# Core apps
brew cask install --appdir="~/Applications" adobe-creative-cloud
brew cask install --appdir="~/Applications" appcleaner
brew cask install --appdir="~/Applications" boom
brew cask install --appdir="~/Applications" dash
brew cask install --appdir="~/Applications" dashlane
brew cask install --appdir="~/Applications" dropbox # hmmmmmmmm
brew cask install --appdir="~/Applications" gitx
brew cask install --appdir="~/Applications" google-drive # hmmmmmmmm
brew cask install --appdir="~/Applications" google-chrome
brew cask install --appdir="~/Applications" mailbox
brew cask install --appdir="~/Applications" mumble
brew cask install --appdir="~/Applications" sketch
brew cask install --appdir="~/Applications" skype
brew cask install --appdir="~/Applications" slack
brew cask install --appdir="~/Applications" spotify # Concentration
brew cask install --appdir="~/Applications" spectacle # Windows management
brew cask install --appdir="~/Applications" steam
brew cask install --appdir="~/Applications" sublime-text # Best text editor
brew cask install --appdir="~/Applications" transmit # FTP slavery
brew cask install --appdir="~/Applications" utorrent
brew cask install --appdir="~/Applications" vlc

# Hard-core development apps
brew cask install --appdir="~/Applications" intellij-idea-ce
brew cask install --appdir="~/Applications" phpstorm
brew cask install --appdir="~/Applications" webstorm

# Other essentials
brew cask install --appdir="~/Applications" heroku-toolbelt

brew install git-flow-avh
brew install ifstat # To get money back from internet providers
brew install imagemagick
brew install mongodb
brew install pow # Easy proxying
brew install sbt
brew install wget

# Cleanup
brew cleanup --force
rm -f -r /Library/Caches/Homebrew/*

# Front-end development
sudo npm install -g gulp
sudo npm install -g divshot-cli
