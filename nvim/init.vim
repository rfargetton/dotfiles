se nocompatible            " disable compatibility to old-time vi
set showmatch               " show matching 
set ignorecase              " case insensitive 
set mouse=v                 " middle-click paste with 
set hlsearch                " highlight search 
set incsearch               " incremental search
set tabstop=2               " number of columns occupied by a tab 
set softtabstop=2           " see multiple spaces as tabstops so <BS> does the right thing
set expandtab               " converts tabs to white space
set shiftwidth=2            " width for autoindents
set autoindent              " indent a new line the same amount as the line just typed
set number                  " add line numbers
set wildmode=longest,list   " get bash-like tab completions
" set cc=80                  " set an 80 column border for good coding style
filetype plugin indent on   "allow auto-indenting depending on file type
syntax on                   " syntax highlighting
set mouse=a                 " enable mouse click
set clipboard=unnamedplus   " using system clipboard
filetype plugin on
set cursorline              " highlight current cursorline
set ttyfast                 " Speed up scrolling in Vim
" set spell                 " enable spell check (may need to download language package)
" set noswapfile            " disable creating swap file
" set backupdir=~/.cache/vim " Directory to store backup files.
set encoding=UTF-8
call plug#begin('~/.vim/plugged')
 " Plugin Section
 Plug 'ryanoasis/vim-devicons'
 Plug 'ctrlpvim/ctrlp.vim'
 Plug 'honza/vim-snippets'
 Plug 'scrooloose/nerdtree'
 Plug 'arcticicestudio/nord-vim'
 Plug 'preservim/nerdcommenter'
 Plug 'mhinz/vim-startify'
 Plug 'neoclide/coc.nvim', {'branch': 'release'}
" Plug 'nvim-lua/plenary.nvim'
" Plug 'nvim-telescope/telescope.nvim'
 Plug 'tpope/vim-fugitive'
 " Plug 'SirVer/ultisnips' "causes bug python 3
call plug#end()

" color schemes
 if (has('termguicolors'))
 set termguicolors
 endif
 syntax enable
 
" colorscheme evening
colorscheme nord

" open new split panes to right and below
set splitright
set splitbelow

" move line or visually selected block - alt+j/k
nnoremap Ï :m .+1<CR>==
nnoremap È :m .-2<CR>==
inoremap Ï <Esc>:m .+1<CR>==gi
inoremap È <Esc>:m .-2<CR>==gi
vnoremap Ï :m '>+1<CR>gv=gv
vnoremap È :m '<-2<CR>gv=gv

" open nerdtree cmd+B
nnoremap <C-b> :NERDTreeToggle<CR>

" let NERDTree show hidden files
let NERDTreeShowHidden=1
