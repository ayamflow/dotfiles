#!/usr/bin/env zsh
#
# Tweaks for OS X.

# Set computer name (as done via System Preferences → Sharing)
#sudo scutil --set ComputerName "flo.macbook"
#sudo scutil --set HostName "flo.macbook"
#sudo scutil --set LocalHostName "flo-macbook"
#sudo defaults write /Library/Preferences/SystemConfiguration/com.apple.smb.server NetBIOSName -string "flo-macbook"


# Prevent EMFILE too many open files when watching
ulimit -n 10240

# rm puts file into trash (brew install trash)
alias rm='trash'

# Always open everything in Finder's list view. This is important.
defaults write com.apple.Finder FXPreferredViewStyle Nlsv

# Disable press-and-hold for keys in favor of key repeat.
defaults write -g ApplePressAndHoldEnabled -bool false

# Set a really fast key repeat.
# defaults write NSGlobalDomain KeyRepeat -int 0

# Expand save panel by default
defaults write NSGlobalDomain NSNavPanelExpandedStateForSaveMode -bool true

# Quit printer app when jobs are done
defaults write com.apple.print.PrintingPrefs "Quit When Finished" -bool true

# Disable the “Are you sure you want to open this application?” dialog
defaults write com.apple.LaunchServices LSQuarantine -bool false

# Restart automatically if the computer freezes
# systemsetup -setrestartfreeze on

# Enable full keyboard access for all controls
# (e.g. enable Tab in modal dialogs)
defaults write NSGlobalDomain AppleKeyboardUIMode -int 3

# Disable auto-correct
defaults write NSGlobalDomain NSAutomaticSpellingCorrectionEnabled -bool false

# Avoid creating .DS_Store files on network volumes
defaults write com.apple.desktopservices DSDontWriteNetworkStores -bool true

# Show the ~/Library folder
chflags nohidden ~/Library

# Skip DMG verification
defaults write com.apple.frameworks.diskimages skip-verify true

# Finder: allow text selection in Quick Look
defaults write com.apple.finder QLEnableTextSelection -bool true

# When performing a search, search the current folder by default
defaults write com.apple.finder FXDefaultSearchScope -string "SCcf"

# Show/hide hidden files in Finder
alias showhidden="defaults write com.apple.finder AppleShowAllFiles -bool true && killall Finder"
alias hidehidden="defaults write com.apple.finder AppleShowAllFiles -bool false && killall Finder"

# Disable hibernation (speeds up entering sleep mode)
# sudo pmset -a hibernatemode 0
# Disable the sudden motion sensor as it’s not useful for SSDs
# sudo pmset -a sms 0
# Disable mail (prevents it from opening because of the calendar)
# sudo chmod 000 /Applications/Mail.app/Contents/MacOS/Mail
# chmod 755 to reverse

# Disable the sound effects on boot
# sudo nvram SystemAudioVolume=" "

# Disabled dashboard
defaults write com.apple.dashboard mcx-disabled -boolean YES
