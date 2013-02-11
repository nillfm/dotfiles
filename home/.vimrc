set nocompatible

execute pathogen#infect()
syntax enable

set background=dark
colorscheme solarized

set tabstop=2
set shiftwidth=2
set expandtab
set backspace=indent,eol,start
set autoindent
set hlsearch
set incsearch
set ignorecase
set smartcase

let mapleader = ","
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'

map :vs :vsplit<cr><c-w>l

nmap <leader>[ :tabPrevious<cr>
nmap <leader>] :tabNext<cr>

