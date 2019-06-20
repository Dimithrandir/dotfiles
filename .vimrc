
" vim-plug plugin manager

call plug#begin('~/.vim/plugged')

" Plug 'valloric/youcompleteme'
" Plug 'nathanaelkane/vim-indent-guides'
Plug 'ajh17/vimcompletesme'
Plug 'Yggdroot/indentLine'

call plug#end()

" Some plugin customization

let g:indentLine_char = '▏'
let g:indentLine_color_term = 237

" General:

set nocompatible			" not compatible with default vi settings
filetype plugin indent on		" recognize filetypes
syntax on				" and content syntax
set encoding=utf-8			" encoding
set number relativenumber		" Display line numbers, relative to current line
set wildmode=longest,list,full		" autocompletition	
set linebreak				" break lines at word (must not have no wrap set)
set ruler				" always display cursot position
set showcmd				" show command at lower right as executing
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o			" disable auto-commenting on new line

" Find and replace
set hlsearch				" highlight search results (escape with :noh)
set incsearch				" search string incrementally, halfway as typing

" Status line settings
" set laststatus=2

" Key mapping
nmap <c-j> o<Esc> 			" insert new line bellow in NORMAL mode

