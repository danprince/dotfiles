PROMPT='%3~%(?.%F{blue}$%f.%F{red}$%f) '

# colourful ls
alias ls='ls -G'

# restore normal bash history keybinding
bindkey '^r' history-incremental-search-backward

# brew
eval "$(/opt/homebrew/bin/brew shellenv)"

# rbenv
eval "$(rbenv init -)"

# nvm
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# enable syntax highlighting (must be at the end of zshrc)
source /opt/homebrew/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
