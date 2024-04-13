#!/usr/bin/env zsh

# common
brew install --cask airbuddy # handle bluetooth devices
brew install --cask discord
brew install --cask fork # git client
brew install git
brew install --cask monitorcontrol # control monitor brightness
brew install --cask raycast # spotlight replacement
brew install --cask rectangle # window manager
brew install --cask spotify
brew install --cask vlc # video reader

# Nodejs
brew install yarn
brew install pnpm
brew install n
sudo mkdir -p /usr/local/n
sudo chown -R $(whoami) /usr/local/n
sudo mkdir -p /usr/local/bin /usr/local/lib /usr/local/include /usr/local/share
sudo chown -R $(whoami) /usr/local/bin /usr/local/lib /usr/local/include /usr/local/share

# LoungeUp
brew install ansible
brew install cocoapods
brew install composer
brew install ios-deploy
brew tap homebrew/cask-versions
brew install --cask zulu11
brew install watchman
brew install --cask insomnia # for testing apis
brew install --cask postman # for testing apis
brew install --cask figma
brew install --cask orbstack
brew install --cask linear-linear
brew install --cask slack

# Browsers
brew install --cask firefox
brew install --cask homebrew/cask-versions/firefox-developer-edition
brew install --cask google-chrome
brew install --cask safari-technology-preview
brew install --cask arc

# Fonts
brew tap homebrew/cask-fonts
brew install --cask font-fira-code