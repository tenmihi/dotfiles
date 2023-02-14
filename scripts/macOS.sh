# Install starship
curl -sS https://starship.rs/install.sh | sh

# Install brew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
eval "$(/opt/homebrew/bin/brew shellenv)"

# Install keychain
brew install keychain
/usr/bin/keychain -q --nogui $HOME/.ssh/id_ed25519

# Install stow
brew install -y stow

# setup private run command
mkdir -p $HOME/dotfiles/private
touch $HOME/dotfiles/private/zshrc
