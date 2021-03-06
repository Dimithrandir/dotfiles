
""""""	Vim-plug plugin manager

call plug#begin('~/.vim/plugged')

Plug 'jiangmiao/auto-pairs'
Plug 'scrooloose/syntastic'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-surround'

call plug#end()

""""""	Plugins customization

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 0
let g:syntastic_check_on_wq = 0

let g:syntastic_javascript_checkers = ['jshint']
let g:syntastic_css_checkers = ['csslint']

filetype plugin indent on		" recognize filetypes

""""""	General

set nocompatible				" not compatible with default vi settings
syntax on						" and content syntax
set encoding=utf-8				" encoding
set number relativenumber		" Display line numbers, relative to current line
set cursorline					" Highlight the line the cursor's at
set wildmode=longest,list,full	" autocompletition for commands
set linebreak					" break lines at word (must not have no wrap set)
set breakindent					" use initial indent when breaking long lines
set ruler						" always display cursot position
set showcmd						" show command at lower right as executing
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o			" disable auto-commenting on new line

set tabstop=4
set shiftwidth=4

set splitbelow					" open new windows to the bottom with horizontal split
set splitright					" open new windows to the right with vertical split

""""""	Colors

colo retrocede				" Pick a colorscheme
" hi CursorLineNr term=bold cterm=NONE ctermfg=11 gui=bold guifg=Yellow	" remove current line underline highlight

" Find and replace
set hlsearch				" highlight search results (escape with :noh)
set incsearch				" search string incrementally, halfway as typing
set ignorecase

" Status line settings
" set laststatus=2

""""""	Key mapping

nmap <c-j> o<Esc>k			" insert new line bellow in NORMAL mode
nmap <c-k> O<Esc> 			" insert new line above in NORMAL mode
nmap <c-h> i<Space><Esc>l	" insert a blankspace before the cursor in NORMAL mode
nmap <c-l> a<Space><Esc>h	" insert a blankspace after the cursor in NORMAL mode
nmap ]l :lnext<CR>			" jump to next item of location list
nmap [l :lprev<CR>			" jump to previous item of location list

""""""	Command mapping

:command W w
:command Q q
:command WQ wq
:command Wq wq
:command WA wa
:command Wa wa
:command Qa qa
:command Wqa wqa
:command WQa wqa
:command WQA wqa
