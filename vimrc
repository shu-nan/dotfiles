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
Bundle 'rking/ag.vim'
Bundle 'nelstrom/vim-visual-star-search'
Bundle 'tpope/vim-fugitive'
Bundle 'airblade/vim-gitgutter'
Bundle 'bling/vim-airline'

syntax on
filetype plugin indent on

let g:agprg = 'ag --nogroup --nocolor --column'

runtime macros/matchit.vim

map <C-n> :NERDTreeToggle<CR>

set t_Co=256
colorscheme codeschool
" overwrite codeschool theme NonText highlight
hi NonText ctermfg=59 ctermbg=NONE cterm=NONE guifg=#414e58 guibg=#232c31 gui=NONE

set encoding=utf-8
set ai sw=2 sts=2 et
set cursorline 
set number
set rnu
set backspace=indent,eol,start
set smartcase
set hlsearch

" status bar
set laststatus=2                  " always show status bar
set statusline=%F%m%r%h%w\ [%l,%c]\ [%L,%p%%] " put column/row number, total lines, and percentage in status

" highlight status bar for current active window
augroup NrHighlight
  autocmd!
  autocmd WinEnter * hi StatusLine ctermfg=3
  autocmd WinLeave * hi StatusLine ctermbg=240 ctermfg=12
augroup END

" vim-airline
let g:airline_left_sep = '»'
let g:airline_right_sep = '«'
let g:airline#extensions#tabline#enabled = 1
