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

    # Install other useful binaries.
    echo "Installing useful tools..."
    brew install curl
    brew install git
    brew install nano
    brew install openssl
    brew install python3
    brew install ruby
    brew install sqlite3
    brew install ssh-copy-id
    brew install wget


    # Install apps
    echo "Installing apps..."
    brew install cask 'appcleaner'
    brew install cask 'db-browser-for-sqlite'
    brew install cask 'imageoptim'
    brew install cask 'launchbar'
    brew install cask 'subethaedit'
    brew install cask 'the-unarchiver'
fi

# Remove outdated versions from the cellar.
brew cleanup
