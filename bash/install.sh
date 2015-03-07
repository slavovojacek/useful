#!/bin/bash

# Install brew
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# Before brew install, run brew doctor. If there is a problem with ownership,
# take it using $ sudo chown -R $USER /usr/local/{DIR}
#
# Make sure to run brew update and brew upgrade periodically

brew install caskroom/cask/brew-cask # Makes it easier to install mac apps

### Makes it easier to update when installed via Homebrew
brew install git # The best version-control
brew install ruby
brew install node
brew install scala

### Core apps
brew cask install --appdir="~/Applications" spectacle # Windows management
brew cask install --appdir="~/Applications" google-chrome
brew cask install --appdir="~/Applications" sublime-text # Best text editor
brew cask install --appdir="~/Applications" spotify # Concentration
brew cask install --appdir="~/Applications" transmit # FTP slavery
brew cask install --appdir="~/Applications" slack
brew cask install --appdir="~/Applications" vlc
brew cask install --appdir="~/Applications" skype
brew cask install --appdir="~/Applications" mailbox
brew cask install --appdir="~/Applications" dash
brew cask install --appdir="~/Applications" dashlane
brew cask install --appdir="~/Applications" gitx
brew cask install --appdir="~/Applications" java
brew cask install --appdir="~/Applications" adobe-creative-cloud
brew cask install --appdir="~/Applications" dropbox # hmmmmmmmm
brew cask install --appdir="~/Applications" google-drive # hmmmmmmmm

### Hard-core development apps
brew cask install --appdir="~/Applications" intellij-idea-ce
brew cask install --appdir="~/Applications" phpstorm
brew cask install --appdir="~/Applications" webstorm

### Other essentials
brew install git-flow
brew install wget
brew install pow # Easy proxying
brew install sbt
brew install imagemagick
brew install ifstat # To get money back from internet providers

# cleanup
brew cleanup --force
rm -f -r /Library/Caches/Homebrew/*

# Front-end development
sudo gem install sass
sudo npm install gulp -g