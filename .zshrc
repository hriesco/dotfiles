 #Loads tmux
if [[ ! $TERM =~ screen ]]; then
	exec tmux
fi	

if [[ -r ~/.local/lib/python2.7/site-packages/powerline/bindings/zsh/powerline.zsh ]]; then
	source ~/.local/lib/python2.7/site-packages/powerline/bindings/zsh/powerline.zsh
fi

# Fonts powerline
#if [ -f `which powerline-daemon` ]; then
  #powerline-daemon -q
  #POWERLINE_BASH_CONTINUATION=1
  #POWERLINE_BASH_SELECT=1
  #. /usr/share/powerline/bash/powerline.sh
  #~/.local/lib/python2.7/site-packages/powerline/binding/bash/powerline.sh
#fi

## Path to your oh-my-zsh installation.
export ZSH=~/.oh-my-zsh

export TERM="xterm-256color"
setopt RM_STAR_WAIT
setopt interactivecomments
setopt CORRECT

# # text, that Vim is going to be there for you
export EDITOR="vim"
export USE_EDITOR=$EDITOR
export VISUAL=$EDITOR

# Theme zsh
ZSH_THEME="agnoster"

plugins=(git footer autojump colored-man colorize extract zsh-syntax-highlighting)

# User configuration
source $ZSH/oh-my-zsh.sh
setopt rm_star_silent 

setopt extended_glob

autoload -Uz compinit promptinit
setopt COMPLETE_ALIASES
compinit
promptinit

# Load alias
source $HOME/.aliases

DEFAULT_USER=`whoami`

# Sets the Mail Environment Variable
