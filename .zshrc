# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="robbyrussell"

# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Comment this out to disable weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
# COMPLETION_WAITING_DOTS="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git-flow bundler brew gem lake zsh-syntax-highlighting)


bindkey ,r  history-incremental-search-backward
setopt hist_ignore_all_dups

# disable the auto update
DISABLE_AUTO_UPDATE="true"

source $ZSH/oh-my-zsh.sh


# Source my custom files after oh-my-zsh so I can override things.
source $HOME/dot_files/zsh/aliases
source $HOME/dot_files/zsh/functions

# ~/.bashrc: executed by bash(1) for non-login shells.
# If not running interactively, don't do anything
[ -z "$PS1" ] && return

# don't put duplicate lines in the history. See bash(1) for more options
export HISTCONTROL=ignoredups
# ... and ignore same sucessive entries.
export HISTCONTROL=ignoreboth

# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
# shopt -s checkwinsize

# make less more friendly for non-text input files, see lesspipe(1)
[ -x /usr/bin/lesspipe ] && eval "$(lesspipe)"

# set variable identifying the chroot you work in (used in the prompt below)
if [ -z "$debian_chroot" ] && [ -r /etc/debian_chroot ]; then
    debian_chroot=$(cat /etc/debian_chroot)
fi

# If this is an xterm set the title to user@host:dir
case "$TERM" in
xterm*|rxvt*)
    PROMPT_COMMAND='echo -ne "\033]0;${USER}@${HOSTNAME}: ${PWD/$HOME/~}\007"'
    ;;
*)
    ;;
esac

# Alias definitions.
# You may want to put all your additions into a separate file like
# ~/.bash_aliases, instead of adding them here directly.
# See /usr/share/doc/bash-doc/examples in the bash-doc package.

#if [ -f ~/.bash_aliases ]; then
#    . ~/.bash_aliases
#fi
# enable programmable completion features (you don't need to enable
# this, if it's already enabled in /etc/bash.bashrc and /etc/profile
# sources /etc/bash.bashrc).
if [ -f /etc/bash_completion ]; then
    . /etc/bash_completion
fi

function git_diff() {
  git diff --no-ext-diff -w "$@" | vim -R -
}


[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"


#Show your Current Git Branch in your Shell Prompt
function parse_git_branch {
  ref=$(git symbolic-ref HEAD 2> /dev/null) || return;
  echo "("${ref#refs/heads/}") ";
}
#http://docs.amazonwebservices.com/ses/latest/DeveloperGuide/index.html?InitialSetup.Scripts.html#InitialSetup.Scripts.AWSCredentials
export AWS_CREDENTIALS_FILE=aws-credentials
#default-shell

# OPTIONAL : Why 'export RUBYOPT'? Because we leave loading libs up to you... See : http://gist.github.com/54177
# export RUBYOPT="rubygems"

# For amazon-ec2 and amazon s3 ruby gems
export AWS_ACCESS_KEY_ID="AKIAJRJBPHOEFRC5HFXA"
export AWS_SECRET_ACCESS_KEY="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"
export EC2_URL="https://us-west-1.ec2.amazonaws.com"
export BUNDLER_EDITOR="vim"
# export NODE_PATH="/usr/local/lib/node_modules"
export NODE_PATH="/Users/iamilake/node_modules"

. ~/.nvm/nvm.sh

export RUBY_HEAP_MIN_SLOTS=1000000
export RUBY_HEAP_SLOTS_INCREMENT=1000000
export RUBY_HEAP_SLOTS_GROWTH_FACTOR=1
export RUBY_GC_MALLOC_LIMIT=100000000
export RUBY_HEAP_FREE_MIN=500000
export ARCHFLAGS="-arch x86_64"

source ~/.local/bin/bashmarks.sh

[[ -s $HOME/.tmuxinator/scripts/tmuxinator ]] && source $HOME/.tmuxinator/scripts/tmuxinator
alias tmux="TERM=screen-256color-bce tmux"

function git_diff() {
  git diff --no-ext-diff -w "$@" | vim -R -
}

# try loading .rvmrc, add it below the line loading RVM
cd .

# https://coderwall.com/p/jaoypq
# Disabling Autocorrect in Zsh
unsetopt correct_all

# Customize to your needs...
export PATH=$PATH:/usr/local/bin:/Users/iamilake/.rvm/bin:/opt/local/bin:/opt/local/sbin:/usr/local/sbin:/usr/bin:/bin:/usr/sbin:/sbin://opt/X11/bin
export PATH=/usr/local/share/npm/bin:$PATH


function git_diff() {
  git diff --no-ext-diff -w "$@" | vim -R -
}

PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting
