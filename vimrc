set ttyfast
set lazyredraw
syntax on

set encoding=utf-8

set laststatus=2
set tabstop=4
set softtabstop=4
set shiftwidth=4
set smarttab
set smartindent
set expandtab
set autoindent
set number
set cursorline

filetype indent on

set showcmd
set wildmenu

set incsearch
set hlsearch

call plug#begin('~/.vim/plugged')

    Plug 'morhetz/gruvbox'

    Plug 'gilligan/vim-lldb'
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
runtime configs/lightline.vim

nnoremap <C-T> :Files<CR>
