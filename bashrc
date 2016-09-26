#    _               _
#   | |             | |
#   | |__   __ _ ___| |__  _ __ ___
#   | '_ \ / _` / __| '_ \| '__/ __|
#   | |_) | (_| \__ \ | | | | | (__
#   |_.__/ \__,_|___/_| |_|_|  \___|
#
#           Dan Prince 2015
#
# http://github.com/danprince/dotfiles

# If not running interactively, don't do anything
[ -z "$PS1" ] && return

# Enable options
shopt -s cdspell
shopt -s cdable_vars
shopt -s checkhash
shopt -s checkwinsize
shopt -s sourcepath
shopt -s no_empty_cmd_completion
shopt -s cmdhist
shopt -s histappend histreedit histverify
shopt -s extglob

# vi mode
set -o vi

# ---------------
# Set Bash Prompt
# ---------------

export PS1="\w\[$(tput setaf 4)\]$ \[$(tput sgr0)\]"


# ------
# Colors
# ------
Black='\e[0;30m'        # Black
Red='\e[0;31m'          # Red
Green='\e[0;32m'        # Green
Yellow='\e[0;33m'       # Yellow
Blue='\e[0;34m'         # Blue
Purple='\e[0;35m'       # Purple
Cyan='\e[0;36m'         # Cyan
White='\e[0;37m'        # White

# Bold
BBlack='\e[1;30m'       # Black
BRed='\e[1;31m'         # Red
BGreen='\e[1;32m'       # Green
BYellow='\e[1;33m'      # Yellow
BBlue='\e[1;34m'        # Blue
BPurple='\e[1;35m'      # Purple
BCyan='\e[1;36m'        # Cyan
BWhite='\e[1;37m'       # White

# Background
On_Black='\e[40m'       # Black
On_Red='\e[41m'         # Red
On_Green='\e[42m'       # Green
On_Yellow='\e[43m'      # Yellow
On_Blue='\e[44m'        # Blue
On_Purple='\e[45m'      # Purple
On_Cyan='\e[46m'        # Cyan
On_White='\e[47m'       # White

# special colors
NC="\e[m"               # Color Reset
ALERT=${BWhite}${On_Red} # Bold White on red background

# ---------------------
# Test Connection Types
# ---------------------
if [ -n "${SSH_CONNECTION}" ]; then
  CNX=${Green} # connected on remote machine, via ssh (good)
elif [[ "${DISPLAY%%:0*}" != "" ]]; then
  CNX=${ALERT} # connected on remote machine, not via ssh (bad)
else
  CNX=${BCyan}
fi

# ---------------------
# Aliases and Functions
# ---------------------
alias ..='cd ..'
alias du='du -kh'
alias df='df -kTh'
alias ls='ls -G'
alias lx='ls -lXB'        # sort by extension
alias lk='ls -lSr'        # sort by size
alias lt='ls -ltr'        # sort by date
alias ll='ls -lv --group-directories-first'
alias tree='tree -Csuh'
alias alert='notify-send --urgency=low -i "$([ $? = 0 ] && echo terminal || echo error)" "$(history|tail -n1|sed -e '\''s/^\s*[0-9]\+\s*//;s/[;&|]\s*alert$//'\'')"'
alias v='nvim'
alias lein='rlwrap lein'
alias copy='xsel -ib'
alias open='xdg-open'

# enable color support of ls
if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias ls='ls --color=auto'
    alias dir='dir --color=auto'
    alias vdir='vdir --color=auto'

    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
fi

# Alias definitions.
# You may want to put all your additions into a separate file like
# ~/.bash_aliases, instead of adding them here directly.
# See /usr/share/doc/bash-doc/examples in the bash-doc package.

if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

# Path variables
# Move computer specific path variables out of this profile
# and into a new location.

if [ -f ~/.bash_path ]; then
    . ~/.bash_path
fi


# enable programmable completion features (you don't need to enable
# this, if it's already enabled in /etc/bash.bashrc and /etc/profile
# sources /etc/bash.bashrc).
if ! shopt -oq posix; then
  if [ -f /usr/share/bash-completion/bash_completion ]; then
    . /usr/share/bash-completion/bash_completion
  elif [ -f /etc/bash_completion ]; then
    . /etc/bash_completion
  fi
fi

# exports
export EDITOR=vim
export BROWSER=chromium-browser
#export TERM="xterm-256color"
export GOPATH=$HOME/dev/go

# visible cursor colour
#echo -ne '\e]12;#33859d\a'

[ -f ~/.fzf.bash ] && source ~/.fzf.bash

export NVM_DIR="/home/dan/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm

export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting
