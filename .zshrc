#Loads tmux

# COMENTAR ESTAS 3 LINES PARA /root/.zshrc
if command -v tmux>/dev/null; then
  [[ ! $TERM =~ screen ]] && [ -z $TMUX ] && exec tmux
fi

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

plugins=(git colorize extract zsh-autosuggestions zsh-syntax-highlighting)

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

# Color change for autocomplete words
ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE='fg=180'

# Load powerline zsh
if [ -f `which powerline-daemon` ]; then
  powerline-daemon -q
  POWERLINE_BASH_CONTINUATION=1
  POWERLINE_BASH_SELECT=1
  source /usr/lib/python3.8/site-packages/powerline/bindings/zsh/powerline.zsh
  # Descomentar para Kali Linux
  # source /usr/share/powerline/bindings/zsh/powerline.zsh
fi

PATH=$PATH=/usr/sbin

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
