# Path to your oh-my-zsh installation.
export ZSH=~/.oh-my-zsh

export TERM="xterm-256color"
setopt RM_STAR_WAIT
setopt interactivecomments
setopt CORRECT

# text, that Vim is going to be there for you
export EDITOR="vim"
export USE_EDITOR=$EDITOR
export VISUAL=$EDITOR

# Alias
source ~/.oh-my-zsh/lib/alias.zsh

#ZSH_THEME="xiong-chiamiov"
ZSH_THEME="robbyrussell"

plugins=(git autojump colored-man colorize extract zsh-syntax-highlighting)

# User configuration
export PATH="/usr/lib/jvm/java-7-openjdk-amd64/bin:~/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games"

source $ZSH/oh-my-zsh.sh
setopt rm_star_silent       
