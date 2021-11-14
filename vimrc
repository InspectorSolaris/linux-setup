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

    Plug 'vimwiki/vimwiki'
    
    Plug 'gilligan/vim-lldb'
    Plug 'neoclide/coc.nvim', {'branch': 'release'}
    Plug 'jackguo380/vim-lsp-cxx-highlight'
    Plug 'rhysd/vim-clang-format'
    Plug 'tikhomirov/vim-glsl'

    Plug 'itchyny/lightline.vim'
    Plug 'preservim/nerdtree'
    Plug 'junegunn/fzf'
    Plug 'junegunn/fzf.vim'
    Plug 'sharkdp/bat'
    
    Plug 'voldikss/vim-floaterm'

call plug#end()

colorscheme gruvbox 

runtime configs/vimwiki.vim
runtime configs/coc.vim
runtime configs/nerdtree.vim
runtime configs/lightline.vim
runtime configs/clang-format.vim
