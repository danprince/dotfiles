PROMPT='%3~%(?.%F{blue}$%f.%F{red}$%f) '

# colourful ls
alias ls='ls -G'

# restore normal bash history keybinding
bindkey '^r' history-incremental-search-backward

# brew
eval "$(/opt/homebrew/bin/brew shellenv)"

# ibrew alias for installing intel packages
# (they go to /usr/local whereas arm goes to /opt/homebrew)
# https://benobi.one/posts/running_brew_on_m1_for_x86/
alias ibrew='arch -x86_64 /usr/local/bin/brew'

# ensure the arm brew binaries come first
export PATH="/opt/homebrew/bin:/usr/local/bin:$PATH"

# rbenv
eval "$(rbenv init -)"

# nvm
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# java / clojure
export PATH="/opt/homebrew/opt/openjdk/bin:$PATH"

# use defined tools
export PATH="$HOME/bin:$PATH"

# enable syntax highlighting (must be at the end of zshrc)
source /opt/homebrew/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

