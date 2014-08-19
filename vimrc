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
Bundle 'tpope/vim-repeat'

runtime macros/matchit.vim

map <C-n> :NERDTreeToggle<CR>

set ai sw=2 sts=2 et
set cursorline 
set number
set rnu
set backspace=indent,eol,start

" status bar
set laststatus=2                  " always show status bar
set statusline=%F%m%r%h%w\ [%l,%c]\ [%L,%p%%] " put column/row number, total lines, and percentage in status

augroup NrHighlight
  autocmd!
  autocmd WinEnter * hi StatusLine ctermfg=3 ctermbg=12
  autocmd WinLeave * hi StatusLine ctermbg=240 ctermfg=12
augroup END

syntax on
filetype plugin indent on
