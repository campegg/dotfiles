#!/usr/bin/env bash


# Install tools using Homebrew; check to see if brew is installed first
if hash brew 2>/dev/null; then
    # Let's get going
    echo "Homebrew already installed; doing some maintenance..."
    # Make sure we’re using the latest Homebrew.
    brew update
    # Upgrade any already-installed formulae.
    brew upgrade
else
    echo "Installing Homebrew..."
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"
fi


# Install other useful binaries.
echo "Installing useful tools..."
brew install curl nano openssl python3 ruby sqlite3 ssh-copy-id wget


# Install apps
echo "Installing apps..."
brew install cask 'appcleaner' 'db-browser-for-sqlite' 'imageoptim' 'launchbar' 'subethaedit' 'the-unarchiver'


# Remove outdated versions from the cellar.
brew cleanup
