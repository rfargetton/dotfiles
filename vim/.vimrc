" not Vi compatible
set nocompatible

" encoding
set encoding=utf-8

" mouse
set mouse=a

" line numbers
set number
set numberwidth=3

" cursorline
set cursorline

" ale warnings
highlight clear ALEErrorSign
highlight clear ALEWarningSign
highlight clear SignColumn
let g:ale_sign_error = "●"
let g:ale_sign_warning = "●"
let g:ale_completion_enabled = 1

set ruler
set nowrap
set sidescroll=1
set visualbell
set clipboard=unnamed
set noswapfile
set foldcolumn=1
highlight clear foldcolumn

" fuzzy find
set path=$PWD/**
set wildmenu

" syntax
syntax on

" statusbar
set noshowmode
set laststatus=2

" lightline
let g:lightline = {
  \ 'active': {
  \   'colorscheme': 'nord',
  \   'left': [ [ 'mode', 'paste' ],
  \             [ 'gitbranch', 'readonly', 'filename', 'modified' ] ]
  \ },
  \ 'component_function': {
  \   'gitbranch': 'fugitive#head'
  \ },
  \ }

" indentation with soft tabs only
" set to 2 spaces
set expandtab
set shiftwidth=2
set softtabstop=2 

" vim-plug
call plug#begin('~/.vim/plugged')

Plug 'arcticicestudio/nord-vim'
Plug 'itchyny/lightline.vim'
Plug 'w0rp/ale'
Plug 'pangloss/vim-javascript'
Plug 'mxw/vim-jsx'
Plug 'tpope/vim-fugitive'
Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() } }

" Initialize plugin system
call plug#end()

" colorscheme
colorscheme nord
