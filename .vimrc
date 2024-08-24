""""""	Vim-plug plugin manager

call plug#begin('~/.vim/plugged')

Plug 'jiangmiao/auto-pairs'
Plug 'scrooloose/syntastic'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-surround'
Plug 'junegunn/goyo.vim'
Plug 'majutsushi/tagbar'
Plug 'scrooloose/nerdcommenter'
Plug 'davidhalter/jedi-vim'
Plug 'udalov/kotlin-vim'

call plug#end()

""""""	Plugins customization

let g:netrw_browse_split = 3	" open files in new tabs from explore

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 0
let g:syntastic_check_on_wq = 0

let g:syntastic_javascript_checkers = ['jshint']
let g:syntastic_css_checkers = ['csslint']
let g:syntastic_html_checkers = ['jshint']
"let g:syntastic_html_checkers = ['w3']
let g:syntastic_sh_checkers = ['shellcheck']
let g:syntastic_python_checkers = ['flake8']
"let g:syntastic_python_checkers = ['pylint']

let g:srcery_italic = 1

let g:tagbar_sort = 0

let g:jedi#use_tabs_not_buffers = 1

filetype plugin indent on		" recognize filetypes

""""""	General

set nocompatible				" not compatible with default vi settings
syntax on						" and content syntax
set encoding=utf-8				" encoding
set number relativenumber		" Display line numbers, relative to current line
set cursorline					" Highlight the line the cursor's at
set wildmode=longest,list,full	" autocompletition for commands
set omnifunc=syntaxcomplete#Complete	" autocompletition for css
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

colo srcery					" Pick a colorscheme

" Find and replace
set hlsearch				" highlight search results (escape with :noh)
set incsearch				" search string incrementally, halfway as typing
set ignorecase

""""""	Key mapping

nmap <c-j> o<Esc>k			" insert new line bellow in NORMAL mode
nmap <c-k> O<Esc> 			" insert new line above in NORMAL mode
cmap <c-h> i<Space><Esc>l	" insert a blankspace before the cursor in NORMAL mode
nmap <c-l> a<Space><Esc>h	" insert a blankspace after the cursor in NORMAL mode
nmap ]l :lnext<CR>			" jump to next item of location list
nmap [l :lprev<CR>			" jump to previous item of location list
"inoremap <c-e> <c-o>$		" jump to end of line in INSERT mode
"inoremap <c-a> <c-o>0		" jump to beggining of line in INSERT mode

""""""	Leader key mapping

map <leader>ll :Lex<Esc>
map <leader>g :Goyo<Esc>
map <leader>o :setlocal spell!<Esc>
map <leader>om :setlocal spell spelllang=mk<Esc>
map <leader>oe :setlocal spell spelllang=en<Esc>
map <leader>km :setlocal keymap=macedonian_utf-8<Esc>
map <leader>tb :TagbarToggle<CR>
map <leader>sc :SyntasticCheck<CR>
map <leader>si :SyntasticInfo<CR>
map <leader>ss :SyntasticToggleMode<CR>
map <leader>sr :SyntasticReset<CR>
map <leader>sw :lopen<CR>
map <leader>sq :lclose<CR>
map <leader>s[ :lprev<CR>
map <leader>s] :lnext<CR>


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
