source ~/.config/zsh/powerlevel10k/powerlevel10k.zsh-theme

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.config/zsh/p10k.zsh ]] || source ~/.config/zsh/p10k.zsh

# history setup
HISTFILE=$HOME/.zhistory
HISTSIZE=10000
SAVEHIST=10000
setopt share_history
setopt hist_expire_dups_first
setopt hist_ignore_dups
setopt hist_verify

# completion using arrow keys (based on history)
bindkey '^[[A' history-search-backward
bindkey '^[[B' history-search-forward


# Plugins
if [[ -d ~/.config/zsh/zsh-syntax-highlighting/ ]]; then
  source ~/.config/zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
fi
if [[ -d ~/.config/zsh/zsh-history-substring-search/ ]]; then
  source ~/.config/zsh/zsh-history-substring-search/zsh-history-substring-search.zsh
fi
if [[ -d ~/.config/zsh/zsh-autosuggestions/ ]]; then
  source ~/.config/zsh/zsh-autosuggestions/zsh-autosuggestions.zsh
fi

# export PATH="~/.local/bin/:$PATH"


# Navigation
alias ..="cd .."
alias ...="cd ../.."

# Git shortcuts
alias gs="git status"
alias gc="git commit"
alias gp="git push"
alias gl="git pull"

# System
alias reload="source ~/.zshrc"
