execute pathogen#infect()
syntax on
filetype plugin indent on
syntax enable

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

nmap <leader>] :tabNext<cr>
nmap <leader>q :nohlsearch<cr>
nmap j gj
nmap k gk
nmap <C-e> :e#<cr>
nmap <C-n> :bnext<cr>
nmap <C-p> :bprev<cr>
nmap \e :NERDTreeToggle<CR>

nnoremap <leader><leader> <c-^> " switch between last 2 buffers

" re-indent file
map   <silent> <F6> mmgg=G`m^zz

let g:ctrlp_map = '<Leader>t'
let g:ctrlp_match_window_bottom = 0
let g:ctrlp_match_window_reversed = 0
let g:ctrlp_custom_ignore = '\v\~$|\.(o|swp|pyc|wav|mp3|ogg|blend)$|(^|[/\\])\.(hg|git|bzr)($|[/\\])|__init__\.py'
let g:ctrlp_working_path_mode = 0
let g:ctrlp_dotfiles = 0
let g:ctrlp_switch_buffer = 0

set t_Co=256
