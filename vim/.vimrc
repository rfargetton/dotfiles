" not Vi compatible
set nocompatible

" encoding
set encoding=utf-8

" mouse
set mouse=a

" line numbers
set number
set numberwidth=3
highlight LineNr ctermfg=238
highlight clear CursorLine

" cursorline
highlight CursorLine ctermbg=238
set cursorline

" ale warnings
highlight clear ALEErrorSign
highlight clear ALEWarningSign
highlight clear SignColumn
let g:ale_sign_error = "●"
let g:ale_sign_warning = "●"
highlight ALEWarningSign ctermfg=yellow ctermbg=NONE
highlight ALEErrorSign ctermfg=red ctermbg=NONE

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

" indentation with soft tabs only
" set to 2 spaces
set expandtab
set shiftwidth=2
set softtabstop=2

" vim-plug
call plug#begin('~/.vim/plugged')

Plug 'itchyny/lightline.vim'
Plug 'w0rp/ale'
Plug 'pangloss/vim-javascript'
Plug 'mxw/vim-jsx'

" Initialize plugin system
call plug#end()
