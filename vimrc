set nocompatible               " be iMproved
filetype off                   " required!

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
" required!
Bundle 'gmarik/vundle'
Bundle 'kien/ctrlp.vim'
Bundle 'scrooloose/nerdtree'
Bundle 'tpope/vim-rails'
Bundle 'tpope/vim-haml'
Bundle 'tpope/vim-surround'

runtime macros/matchit.vim

syntax on
filetype plugin indent on
set number

map <C-n> :NERDTreeToggle<CR>
set ai sw=2 sts=2 et
set cursorline 
set rnu
