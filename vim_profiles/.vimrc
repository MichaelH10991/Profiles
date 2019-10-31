set nocompatible
filetype off
syntax on
filetype plugin indent on
set mouse=a
set showmatch
set ignorecase
set smartcase
set encoding=utf-8
" numbering.
set number
set ruler
" turns backspacing on.
set bs=2
" text wrap
set wrap
set textwidth=79
set formatoptions=tcqrn1
" show existing tab with 4 spaces width
set tabstop=4
" when indenting with '>', use 4 spaces width
set shiftwidth=4
set softtabstop=2
" On pressing tab, insert 4 spaces
set expandtab
set noshiftround
set laststatus=2

" Call the .vimrc.plug file
 if filereadable(expand("~/.vimrc.plug"))
     source ~/.vimrc.plug
 endif
