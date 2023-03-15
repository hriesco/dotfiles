## My Linux dotFiles

* I use this repo for my own dot files for linux.
* But use it for whatever you want.
* Before you install it in your system read first the dotfiles.
* And adjust them for your operating system.
* Files were tested for linux debian and arch based systems.

## Requirements

* Zsh 

  `pacman -S zsh tmux vim powerline-fonts powerline vim-powerline xsel xclip git`
  
  `apt install -y zsh tmux vim powerline xsel xclip`
  
* Set zsh as your login shell
 
  `chsh -s $(which zsh)`

## Install

* Clone this repo in a directory and copy the files to your /home/user/ directory ( ~/ )
* Do the same with the root user, but change the file .zshrc with the content of .zshrc_root
			
	`git clone https://github.com/hriesco/dotfiles`
	
	### as normal user
	`cp .aliases .bashrc .fzf.zsh .tmux.conf .vimrc .zshrc ~`
	`cp -r .tmux .vim ~`
	
	### as root
	`cp .aliases .bashrc .fzf.zsh .tmux.conf .vimrc .zshrc_root ~`
	`cp -r .tmux .vim ~`
	`mv ~/.zshrc_root ~/.zshrc`
	
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
- En algun caso si no funciona grc: `sed -i 's/\/usr\/bin\/grc/\/usr\/local\/bin\/grc/g' ~/.aliases`

	`git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm`
	`git clone https://github.com/zsh-users/zsh-autosuggestions.git $ZSH_CUSTOM/plugins/zsh-autosuggestions`
	`git clone https://github.com/zsh-users/zsh-syntax-highlighting.git $ZSH_CUSTOM/plugins/zsh-syntax-highlighting`

	`git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim`

	`CTRL + a + I`  (Install tmux plugins [tmux-yank])
	`tmux source ~/.tmux.conf`
	
	`git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf`
	`cd ~/.fzf/`
	`./install`
	
- Run vim and type :PluginInstall
- Uncomment the 3 first lines of the file .zshrc for the root user
