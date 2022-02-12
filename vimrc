syntax on

set nocompatible
set ttyfast

set encoding=utf-8

set laststatus=2
set tabstop=4
set softtabstop=4
set shiftwidth=4
set smarttab
set expandtab
set autoindent
set smartindent

filetype indent on

set incsearch
set hlsearch

set scrolloff=16
set lazyredraw
set splitbelow
set splitright

call plug#begin('~/.vim/plugged')

    Plug 'morhetz/gruvbox'

    Plug 'rust-lang/rust.vim'

    Plug 'neoclide/coc.nvim', {'branch': 'release'}
    Plug 'jackguo380/vim-lsp-cxx-highlight'
    Plug 'tikhomirov/vim-glsl'
    
    Plug 'vim-autoformat/vim-autoformat'
    Plug 'itchyny/lightline.vim'
    Plug 'junegunn/fzf'
    Plug 'junegunn/fzf.vim'
    Plug 'sharkdp/bat'

call plug#end()

colorscheme gruvbox

runtime configs/coc.vim
runtime configs/cmake.vim
runtime configs/lightline.vim

nnoremap <C-T> :Files<CR>

autocmd BufWrite *.cpp :Autoformat
autocmd BufWrite *.hpp :Autoformat
