PROMPT='%3~%(?.%F{blue}$%f.%F{red}$%f) '

# saner version of ls (brew install coreutils)
#alias ls='gls --color=auto --group-directories-first'

# restore normal bash history keybinding
bindkey '^r' history-incremental-search-backward

# ruby version manager
eval "$(rbenv init -)"

# node version manager
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"

# enable syntax highlighting (must be at the end of zshrc)
#source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
