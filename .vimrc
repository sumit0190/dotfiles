set nocompatible              " be iMproved, required
filetype off                  " required
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'vim-scripts/The-NERD-tree'
Plugin 'vim-scripts/vividchalk.vim'
Plugin 'bling/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

syntax enable
colorscheme vividchalk
set background=dark
set nu
set ruler
set autoindent
set copyindent
set ignorecase
set smartcase
set hlsearch
set incsearch
set laststatus=2
set tabstop=2
set expandtab
set guifont=Inconsolata\ for\ Powerline:h15
set encoding=utf-8
set guioptions-=r
set guioptions-=L
set clipboard=unnamed
setlocal spell spelllang=en_us    
:imap ;; <Esc>
silent! nmap ,n :NERDTreeToggle<CR>
silent! nmap ,f :NERDTreeFind<CR>
silent! nmap ,s :sus<CR>
:nmap j gj
:nmap k gk
let mapleader=","
silent! map <leader>h :wincmd h<CR>
silent! map <leader>j :wincmd j<CR>
silent! map <leader>k :wincmd k<CR>
silent! map <leader>l :wincmd l<CR>

" air-line
let g:airline_powerline_fonts = 1
let g:airline_theme='solarized'

