" Use Vim settings, rather than Vi settings.
" This must be first, because it changes other options as a side effect.
set nocompatible

" Make backspace behave in a sane manner.
set backspace=indent,eol,start

" Switch syntax highlighting on.
syntax on

" Enable file type detection and do language-dependent indenting.
filetype plugin indent on

" Key map
" enable retrieval in search prompt by <C-p> or <C-n>.
cnoremap <C-p> <Up>
cnoremap <C-n> <Down>
" add :nohlsearch to <C-l>
nnoremap <silent> <C-l> :<C-u>nohlsearch<CR><C-l>

" Plugins
call plug#begin(expand('~/.vim/plugged'))
Plug 'tpope/vim-unimpaired'
Plug 'arcticicestudio/nord-vim'
Plug 'itchyny/lightline.vim'
call plug#end()

" Colors
" set terminal color setting to 256.
if !has('gui_running')
  set t_Co=256
endif
set termguicolors
" use my fav colorsheme.
colorscheme nord
" customize highlight to my taste.
highlight Comment ctermfg=8
" customize lightline status.
let g:lightline = {
      \ 'colorscheme': 'nord'
      \ }

" Miscs
" allow hidden buffers, don't limit to 1 file per window/split.
set hidden
" use decimal increment (<C-a> <C-x>)
set nrformats=
set belloff=all 
set number
set title
set ruler
set cursorline
set smartcase
set hlsearch
set incsearch
set laststatus=2
set noshowmode
set ttimeoutlen=50
" indent settings
set autoindent
set smartindent
" tab settings
" set 'tabstop' and 'shiftwidth' to whatever you prefer and use 'expandtab'.
" this way you will always insert spaces.
set tabstop=2
set shiftwidth=2
set expandtab
set smarttab
