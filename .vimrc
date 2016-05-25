"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"    	 _____
" ___   ____(_)______ ___
" __ | / /_  /__  __ `__ \
" __ |/ /_  / _  / / / / /
" _____/ /_/  /_/ /_/ /_/
"
"  
"
" Maintainer: Héctor Riesco
" Version: 0.1
" Last Change: 14.01.2016
" Sections:
" -------------------------------------------------------------

" Properties
" -----------------------------------------------
set hidden
set colorcolumn=80
set backspace=indent,eol,start
set nocompatible
set nocp
set cindent
set laststatus=2
set fileencoding=utf-8 
set hls is
set background=dark
set ruler
set showcmd
set wrap
set tabstop=4
set shiftwidth=4
set noexpandtab
set showmatch
set number
set ignorecase
set smartcase
set undolevels=1000
set title
set novisualbell
set noerrorbells
set swapfile
set mouse=a
set breakindent
set history=1000

" change the mapleader from \ to ,
let mapleader=","

" Select All
map <C-a> <esc>ggVG<CR>

" Tagbar 
nmap <F8> :TagbarToggle<CR>

" Build
map <F9> :make -j 2 && make run<CR>
let &errorformat="%-GIn file included from %f:%l:%c\\,,%-GIn file included from %f:%l:%c:,%-Gfrom %f:%l\\,,-Gfrom %f:%l:%c\\,," . &errorformat
set errorformat+=%D%*\\a[%*\\d]:\ Entering\ directory\ `%f'

" Indenting
set autoindent
set smartindent
set copyindent

" Insert tabs on the start of a line according to shiftwidth, not tabstop
set smarttab

" Use multiple of shiftwidth when indenting with '<' and '>'
set shiftround

" Move lines backward or forward
nnoremap <C-j> :m .+1<CR>==
nnoremap <C-k> :m .-2<CR>==

" Copy to clipboard system
vnoremap <C-c> "*y

filetype plugin indent on
syntax on
colorscheme  koehler
"colorscheme mirec

" PLUGINS CONFIG
" ------------------------------------------------------

" Pathongen to install modules in vim"
execute pathogen#infect()

" Autoexecute NERDTree"
"autocmd VimEnter * NERDTree
"autocmd VimEnter * wincmd p
"autocmd BufEnter * NERDTreeMirror " add folder tree to the left hand side for each tab
map <Leader>n <plug>NERDTreeTabsToggle<CR>

"Easymotion

"LustyExplorer
let g:LustyJugglerSuppressRubyWarning = 1

"clan_pro
"let g:clang_auto_tab=0
"

" Syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

" OmniCppComplete
set tags+=/home/rotceh/tags
map <C-F12> :!ctags -R --c++-kinds=+p --fields=+iaS --extra=+q --language-force=c++ /usr/include /usr/local/include<CR>

" omnicompletion : words
inoremap <leader>, <C-x><C-o>
" omnicompletion : filenames
inoremap <leader>: <C-x><C-f>
" omnicompletion : lines
inoremap <leader>= <C-x><C-l>
" Lightline


