#!/usr/bin/env zsh

osascript -e 'tell application "System Preferences" to quit'


brew install mas

mas signin --dialog

mas install 497799835 # Xcode
mas install 939343785 # Icon set creator
mas install 1388020431 # DevCleaner for Xcode

### FINDER
# show hidden files in finder
defaults write com.apple.finder AppleShowAllFiles -bool true
# show filename extensions
defaults write NSGlobalDomain AppleShowAllExtensions -bool true
# show status bar
defaults write com.apple.finder ShowStatusBar -bool true
# show path bar
defaults write com.apple.finder ShowPathbar -bool true
# keep folders on top when you sort by name
defaults write com.apple.finder _FXSortFoldersFirst -bool false
# when you search, search in folder by default
defaults write com.apple.finder FXDefaultSearchScope -string "SCcf"
# disable warning when you change file extension
defaults write com.apple.finder FXEnableExtensionChangeWarning -bool false
# allow quitting finder
defaults write com.apple.finder QuitMenuItem -bool true
# set sidebar icon size to medium
defaults write NSGlobalDomain NSTableViewDefaultSizeMode -int 1
# save panel expanding by default
defaults write NSGlobalDomain NSNavPanelExpandedStateForSaveMode -bool true
defaults write NSGlobalDomain NSNavPanelExpandedStateForSaveMode2 -bool true
# list view by default (other modes: `icnv`, `clmv`, `Flwv`)
defaults write com.apple.finder FXPreferredViewStyle -string "Nlsv"
# show ~/Library folder
chflags nohidden ~/Library
# show /Volumes folder
sudo chflags nohidden /Volumes


### KEYBOARD / CURSOR
# natural scrolling
defaults write NSGlobalDomain com.apple.swipescrolldirection -bool true

# keyboard repeat rate (1 => 15ms)
defaults write NSGlobalDomain KeyRepeat -int 1
defaults write NSGlobalDomain InitialKeyRepeat -int 12

### DOCK
# auto hide, short animation duration, no delay
defaults write com.apple.dock autohide -bool true
defaults write com.apple.dock autohide-time-modifier -float 0.25
defaults write com.apple.dock autohide-delay -float 0
# icon size
defaults write com.apple.dock tilesize -int 36
# don't switch to the most recent used space (keep order)
defaults write com.apple.dock mru-spaces -bool false
# remove dock items
defaults write com.apple.dock persistent-apps -array

### SECURITY
# Require password immediately after sleep or screen saver begins
defaults write com.apple.screensaver askForPassword -int 1
defaults write com.apple.screensaver askForPasswordDelay -int 0


### SAFARI
# enable develop menu & inspector
defaults write com.apple.Safari IncludeDevelopMenu -bool true
defaults write com.apple.Safari WebKitDeveloperExtrasEnabledPreferenceKey -bool true
defaults write com.apple.Safari com.apple.Safari.ContentPageGroupIdentifier.WebKit2DeveloperExtrasEnabled -bool true
# context menu on web views for web inspector
defaults write NSGlobalDomain WebKitDeveloperExtras -bool true

### SCREENSHOTS
# create directory and assign it
defaults write com.apple.screencapture location -string "~/Desktop"
# show thumbnail after screenshot
defaults write com.apple.screencapture show-thumbnail -bool true

### OTHER
# show main view when opening activity monitor
defaults write com.apple.ActivityMonitor OpenMainWindow -bool true


#restart all aps
for app in "Activity Monitor" \
	"cfprefsd" \
	"Dock" \
	"Finder" \
	"Safari" \
	"SystemUIServer"; do
	killall "${app}" &> /dev/null
done
