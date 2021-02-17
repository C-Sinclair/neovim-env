""" This file is for all the global set commands for my vim env

" Undo
set undodir=~/.local/undo/
set undofile

" Swap/backup
set noswapfile
set nobackup
set nowritebackup

" Tabs
set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set smartindent

" Custom vims
set exrc

" Enable autocompletion:
set wildmode=longest,list,full

" Splits open at the bottom and right, which is non-retarded, unlike vim defaults.
set splitbelow splitright

" Search
set hls

" Implicit cases for search
set smartcase
set ignorecase

" Misc
set clipboard+=unnamedplus
set hidden
set nocompatible

filetype plugin on
syntax on
set encoding=utf-8

set number relativenumber
set scrolloff=8

set updatetime=300
set signcolumn=yes

set cmdheight=2
set shortmess+=c

set wildcharm=<C-z>

