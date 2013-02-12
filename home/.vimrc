set nocompatible
execute pathogen#infect()
syntax enable

filetype plugin on
filetype indent on
set autoread

set background=dark
colorscheme solarized

set history=600
set tabstop=2
set shiftwidth=2
set expandtab
set backspace=indent,eol,start
set autoindent
set hlsearch
set incsearch
set ignorecase
set smartcase
set ruler
set clipboard=unamed
set wildignore+=.hg
set wildignore+=.git
set smartcase
set number

let mapleader = ","
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'

map :vs :vsplit<cr><c-w>l

nmap <leader>[ :tabPrevious<cr>
nmap <leader>] :tabNext<cr>

