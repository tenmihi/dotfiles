
# Install brew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
eval "$(/opt/homebrew/bin/brew shellenv)"

# Install starship
brew install starship

# Install keychain
brew install keychain
/usr/bin/keychain -q --nogui $HOME/.ssh/id_ed25519

# Install stow
brew install stow

# Install tmux
brew install tmux

# setup private run command
mkdir -p $HOME/dotfiles/private
touch $HOME/dotfiles/private/zshrc

cd $(dirname $0)/../
stow -v tmux starship zsh -t $HOME
