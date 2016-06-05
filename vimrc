set nocompatible               " be iMproved
filetype off                   " required!

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

Plugin 'kien/ctrlp.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'tpope/vim-rails'
Plugin 'tpope/vim-haml'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-repeat'
Plugin 'rking/ag.vim'
Plugin 'nelstrom/vim-visual-star-search'
Plugin 'tpope/vim-fugitive'
Plugin 'airblade/vim-gitgutter'
Plugin 'bling/vim-airline'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

syntax on

let g:agprg = 'ag --nogroup --nocolor --column'

runtime macros/matchit.vim

map <C-n> :NERDTreeToggle<CR>

set t_Co=256
colorscheme babymate256

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

highlight ExtraWhitespace ctermbg=darkred guibg=darkred
match ExtraWhitespace /\s\+$/

" vim-airline
let g:airline_left_sep = '»'
let g:airline_right_sep = '«'
let g:airline#extensions#tabline#enabled = 1

set guifont=Monaco:h12
