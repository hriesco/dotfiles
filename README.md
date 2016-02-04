## My Linux dotFiles

* I use this repo for my own dot files for linux.
* But use it for whatever you want.
* Before you install it in your system read first the dotfiles.
* And adjust them for your operating system.
* Files were tested for linux debian based systems.

## Requirements

* Zsh 

  `sudo aptitude install zsh`

* Set zsh as your login shell
 
  `chsh -s $(which zsh)`

## Install

* Clone this repo in a directory and copy the files to your /home/user/ directory ( ~/ )
			
	`git clone https://github.com/hriesco/dotfiles`

	`cp -r ./ ~/`
	
	`cp alias.zsh ~/.oh-my-zsh/lib/`
