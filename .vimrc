"""""""""""""""""""""""""""""""""""""""""""""""""""""
" ___   ____(_)______ ___
" " __ | / /_  /__  __ `__ \
" " __ |/ /_  / _  / / / / /
" " _____/ /_/  /_/ /_/ /_/
" "
" " Maintainer: riesc0
" " Version: 0.3
" " Last Change: 06.12.2016
" """"""""""""""""""""""""""""""""""""""""""""""""""""""
"
" VUNDLE VIM CONFIG --------------------------------------------
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" " alternatively, pass a path where Vundle should install plugins
" "call vundle#begin('~/some/path/here')
"
" " let Vundle manage Vundle, required
" Para instalar escribir :PluginInstall
Plugin 'VundleVim/Vundle.vim'
Plugin 'scrooloose/nerdcommenter'
Plugin 'dracula/vim'
Plugin 'scrooloose/nerdtree'
Plugin 'easymotion/vim-easymotion'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

" Enable syntax highlight
filetype plugin on
syntax on
" Color schema
color dracula

highlight ColorColumn ctermbg=red
set colorcolumn=80
set hlsearch
set noexpandtab
set hlsearch
set incsearch
set showmatch
set ignorecase
set mouse=a " Enable mouse
set number " Show number line
set relativenumber " Show relative number for the actual line to move faster

" Tabs config
set tabstop=4
set shiftwidth=4
set softtabstop=4
set fileencoding=utf-8 

" Highlight text selected
hi Search cterm=NONE ctermfg=white ctermbg=red

let mapleader = ","

" Open vim cheatsheets to edit
nnoremap <leader>ec :vsp ~/.vim_cheatsheets<CR>
" " Open vimrc to edit
nnoremap <leader>ev :tab sp ~/.vimrc<CR>

" Move lines backward or forward
nnoremap <C-j> :m .+1<CR>==
nnoremap <C-k> :m .-2<CR>==

" Nerdtree
nmap <leader>n :NERDTree<cr>

" turn off search highlight
nnoremap <leader><space> :nohlsearch<CR>

" Poweline
"set rtp+=$HOME/.local/lib/python2.7/site-packages/powerline/bindings/vim/
"set laststatus=2
"set t_Co=256

" Open file and save file 
nnoremap <Leader>o :CtrlP<CR>
nnoremap <Leader>w :w<CR>
nnoremap <Leader>q :wq<CR>

" Move cursor to previous position when opens file
augroup resCur
  autocmd!
  autocmd BufReadPost * call setpos(".", getpos("'\""))
augroup END

imap <C-space> <Plug>IMAP_JumpForward
nmap <C-space> <Plug>IMAP_JumpForward
vmap <C-space> <Plug>IMAP_JumpForward

" CtrlP settings
let g:ctrlp_working_path_mode = 'ra'
let g:ctrlp_match_window = 'bottom,order:ttb'
let g:ctrlp_switch_buffer = 0
let g:ctrlp_working_path_mode = 0
let g:ctrlp_user_command = 'ag %s -l --nocolor --hidden -g ""'

" Syntastic settings
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

" NerdTree
let NERDTreeShowBookmarks=1
let g:NERDTreeDirArrowExpandable = '▸'
let g:NERDTreeDirArrowCollapsible = '▾'

" vim markdown
let g:instant_markdown_slow = 1
let g:instant_markdown_autostart = 0

"##### FUNCIONES #############################################################
" Llamadas a funciones
nnoremap <C-n> :call ToggleRelativeNumber()<cr>

function! ToggleRelativeNumber()
	if(&number == 1)
        set relativenumber!
    else
        set norelativenumber
    endif
endfunction
