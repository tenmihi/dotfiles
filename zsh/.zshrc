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

# nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# flutter
export PATH="/opt/homebrew/opt/curl/bin:$PATH"
export PATH="$PATH:$HOME/development/flutter/bin"
export PATH="$PATH:/Users/tenmihi/Library/Android/sdk/platform-tools"

# rbenv
eval "$(rbenv init - zsh)"

# use trash instead of rm
alias rm=trash

# set vim mode
set -o vi

# ignorespace & ignoredups
HISTCONTROL=ignoreboth

# starship (must be end of file)
eval "$(starship init zsh)"
