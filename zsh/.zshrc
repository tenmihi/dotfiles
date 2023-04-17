# homebrew
eval "$(/opt/homebrew/bin/brew shellenv)"

# keychain
keychain $HOME/.ssh/id_ed25519
source $HOME/.keychain/$HOST-sh

# nvm
export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm

if [ -e "$HOME/dotfiles/private/zshrc" ]; then
  echo "Private zshrc found."
  source $HOME/dotfiles/private/zshrc
fi

# starship (must be end of file)
eval "$(starship init zsh)"
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
