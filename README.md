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
	
	`sh -c "$(wget https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"`

	`git clone https://github.com/powerline/fonts.git --depth=1`

	`cd fonts`

	`./install.sh`

	`cd ..`

	`rm -rf fonts`

	`cp -r ./ ~/`

	`git clone https://github.com/garabik/grc.git`

	`cd grc`

	`./install.sh`

	`git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim`

	`CTRL + a + I`  (Install tmux plugins [tmux-yank])
	
	`sed -i 's/\/usr\/bin\/grc/\/usr\/local\/bin\/grc/g' ~/.aliases` 

- Run vim and type :PluginInstall
