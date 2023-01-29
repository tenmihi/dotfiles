# Install starship
curl -sS https://starship.rs/install.sh | sh

sudo apt-get update -y

# Install keychain
sudo apt-get install keychain

/usr/bin/keychain -q --nogui $HOME/.ssh/id_ed25519

# Install stow
sudo apt-get install -y stow
