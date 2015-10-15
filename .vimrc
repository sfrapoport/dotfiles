"Use Vim settings, rather than Vi settings (much better!).
" This must be first, because it changes other options as a side effect.
set nocompatible
filetype off                  " required
 
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#rc()
" Plugin manager
Plugin 'gmarik/Vundle.vim'
" Colorscheme
Plugin 'altercation/vim-colors-solarized'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-commentary'
Plugin 'tpope/vim-unimpaired'
Plugin 'bling/vim-airline'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'rking/ag.vim'

Plugin 'christoomey/vim-tmux-navigator'
" Syntax highlighting (simple linting)
Plugin 'scrooloose/syntastic'
" Autocomplete plugins fix Bundle vs Plugin system?
Bundle 'Valloric/YouCompleteMe'
Bundle 'marijnh/tern_for_vim'
Plugin 'jelera/vim-javascript-syntax'
Plugin 'pangloss/vim-javascript'
Plugin 'davidhalter/jedi-vim'
Plugin 'ervandew/supertab'
" Enable file type detection and do language-dependent indenting.
filetype plugin indent on
set backspace=indent,eol,start  " Make backspace behave in a sane manner.
 
syntax on " Switch syntax highlighting on
set background=dark
colorscheme solarized

" Tab settings (note that file-type specific indent settings are set separately)
let mapleader = "\<Space>" 

set tabstop=4 " TAB = 4 spaces
set shiftwidth=4 " TAB = 4 spaces
set softtabstop=4 " TAB = 4 spaces in insert mode
set expandtab      
set shiftround

set wildmenu " Visual autocomplete for commands
set lazyredraw " only redraw when necessary (this is good for speed)
set showmatch " Show me the matching bracket/paren/quote
" Search settings
set hlsearch
set incsearch

set autoindent
set number
set encoding=utf-8
set scrolloff=3
set showcmd
set wildmode=list:longest
set ttyfast
set ruler
set laststatus=2
set relativenumber
set undofile
set showtabline=2
set noshowmode
" Allow hidden buffers, don't limit to 1 file per window/split
set hidden
set history=100
" Enable mouse capture/scrolling
set mouse=a
" Enable vimrc reload on save
augroup reload_vimrc 
    autocmd!
    autocmd BufWritePost $MYVIMRC source $MYVIMRC
augroup END 
" Autosave on focus lost
au FocusLost * :wa

" Custom leader commands
map! <C-q> <Esc> 
map <C-q> <Esc>
imap <C-s> <Esc>:w<CR>
map <C-s> :w<CR>
" Allow for the arrow keys to navigate up and down on wrapped lines
inoremap <Up> <C-o>g<Up>
inoremap <Down> <C-o>g<Down>

nnoremap <leader><space> :nohlsearch<CR> 
" Swap line with next/previous
map - ddp
map _ ddjp

imap  <Esc>:only<CR>
map <leader>h :nohlsearch<CR>

nnoremap <leader>v V']
nnoremap <leader>w <C-w>v<C-w>l
