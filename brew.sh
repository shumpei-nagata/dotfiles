has() {
    type "$1" > /dev/null 2>&1
}

set -e

# Install Homebrew
echo "Check if Homebrew is available."
if has "brew"; then
    echo "Homebrew is already Installed."
else
    echo "Homebrew does not exist."
    echo "Installing Homebrew..."
    ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

# Update Homebrew
echo "Updating Homebrew..."
brew update
brew upgrade
echo "Update Homebrew completed."

# bundle
brew bundle

# cleanup
brew cleanup