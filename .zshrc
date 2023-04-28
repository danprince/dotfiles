PROMPT='%3~%(?.%F{blue}$%f.%F{red}$%f) '

# colourful ls
alias ls='ls -G'

# restore normal bash history keybinding
bindkey '^r' history-incremental-search-backward

# esc-v to edit a command in vim
autoload -U edit-command-line
zle -N edit-command-line
bindkey -M vicmd v edit-command-line

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

# figure out which process is listening on a given port
portblamer() {
  lsof -i -P | grep LISTEN | grep :$1
}

# pnpm
export PNPM_HOME="/Users/dan/Library/pnpm"
export PATH="$PNPM_HOME:$PATH"
# pnpm end
