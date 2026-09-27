if [ -x /opt/homebrew/bin/brew ]; then
  eval "$(/opt/homebrew/bin/brew shellenv)"
elif [ -x /usr/local/bin/brew ]; then
  eval "$(/usr/local/bin/brew shellenv)"
fi
export PATH="/usr/local/sbin:$PATH"

# ALIASES
alias  ls="eza --long --header --git"
alias cdh="cd ~"
alias cdp="cd ~/projects"

# DEFAULT EDITOR
export EDITOR="nano"

if command -v mise >/dev/null 2>&1; then
  eval "$(mise activate zsh)"
fi

# ZSH AUTO SUGGESTIONS
source $(brew --prefix)/share/zsh-autosuggestions/zsh-autosuggestions.zsh

eval "$(starship init zsh)"
