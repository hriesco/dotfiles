"""""""""""""""""""""""""""""""""""""""""""""""""""""
" ___   ____(_)______ ___
" __ | / /_  /__  __ `__ \
" __ |/ /_  / _  / / / / /
" _____/ /_/  /_/ /_/ /_/
"
" Maintainer: Héctor Riesco
" Version: 0.1
" Last Change: 26.05.2016
""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Vundle plugin manager
" ----------------------------------------------------
set nocompatible              
filetype off                 

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'scrooloose/nerdtree.git'
Plugin 'tpope/vim-fugitive'
Plugin 'majutsushi/tagbar'
Plugin 'jistr/vim-nerdtree-tabs'
Plugin 'nerdtree-ack'
Plugin 'mileszs/ack.vim'
Plugin 'itchyny/lightline.vim'
Plugin 'kien/ctrlp.vim'
Plugin 'rking/ag.vim'
Plugin 'easymotion/vim-easymotion'
Plugin 'scrooloose/nerdcommenter'
Plugin 'Syntastic'
Plugin 'colorizer'
Plugin 'joonty/vdebug'
Plugin 'MarcWeber/vim-addon-mw-utils'
Plugin 'tomtom/tlib_vim'
Plugin 'garbas/vim-snipmate'
Plugin 'OmniCppComplete'
Plugin 'rstacruz/sparkup'

" Optional:
Plugin 'honza/vim-snippets'
Plugin 'Valloric/MatchTagAlways'

call vundle#end()
filetype plugin indent on


" Properties
" ----------------------------------------------------
set autoindent
set background=dark
set backspace=indent,eol,start
set breakindent
set cindent
set colorcolumn=80
set copyindent
set expandtab
set fileencoding=utf-8 
set foldenable
set foldlevelstart=10
set foldmethod=manual
set foldnestmax=10
set history=1000
set hlsearch
set incsearch
set ignorecase
set laststatus=2
set lazyredraw
set mouse=a
set nocp
set noerrorbells
set noexpandtab
set novisualbell
set number
set ruler
set shiftwidth=4
set showcmd
set showcmd
set showmatch
set smartcase
set smartindent
set softtabstop=4
set swapfile
set tabstop=4
set title
set undolevels=1000
set wildmenu
set wrap

colorscheme koehler

" Change the mapleader from \ to ,
let mapleader=","

" Keys mapping
"----------------------------------------

" Close html tags
imap ,- </<C-X><C-O>

" Open vim cheatsheets to edit
nnoremap <leader>ec :vsp ~/.vim_cheatsheets<CR>

" Open vimrc to edit
nnoremap <leader>ev :tab sp ~/.vimrc<CR>

" turn off search highlight
nnoremap <leader><space> :nohlsearch<CR>

" space open/closes folds
nnoremap <space> za

" Move lines backward or forward
nnoremap <C-j> :m .+1<CR>==
nnoremap <C-k> :m .-2<CR>==

" Executes NerdTree
map <Leader>n <plug>NERDTreeTabsToggle<CR>

" Ctags
map <f12> :!ctags -R .<cr>

" Select All
map <C-a> <esc>ggVG<CR>

" Open Tagbar
nmap <F8> :TagbarToggle<CR>

" Build
map <F9> :make -j 2 && make run<CR>
let &errorformat="%-GIn file included from %f:%l:%c\\,,%-GIn file included from %f:%l:%c:,%-Gfrom %f:%l\\,,-Gfrom %f:%l:%c\\,," . &errorformat
set errorformat+=%D%*\\a[%*\\d]:\ Entering\ directory\ `%f'

" Copy to clipboard system
vnoremap <C-c> "*y


" Configuration modules 
" ----------------------------------------------------

" CtrlP settings
let g:ctrlp_working_path_mode = 'ra'
let g:ctrlp_match_window = 'bottom,order:ttb'
let g:ctrlp_switch_buffer = 0
let g:ctrlp_working_path_mode = 0
let g:ctrlp_user_command = 'ag %s -l --nocolor --hidden -g ""'

" Ag settings
set runtimepath^=~/.vim/bundle/ag

" Backup settings
set backup
set backupdir=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
set backupskip=/tmp/*,/private/tmp/*
set directory=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
set writebackup

" Syntastic settings
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
