
" General:

set nocompatible			" not compatible with default vi settings
filetype plugin indent on		" recognize filetypes
syntax on				" and content syntax
set encoding=utf-8			" encoding
set number relativenumber		" Display line numbers, relative to current line
set wildmode=longest,list,full		" autocompletition	
set linebreak				" break lines at word (must not have no wrap set)

" Find and replace
set hlsearch				" highlight search results (escape with :noh)
set incsearch				" search string incrementally
