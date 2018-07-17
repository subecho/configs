" Enable Pathogen
set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'gmarik/Vundle.vim'
Plugin 'scrooloose/syntastic'
Plugin 'scrooloose/nerdtree'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-scripts/desertEx'
Plugin 'tomasr/molokai'
Plugin 'godlygeek/tabular'
Plugin 'plasticboy/vim-markdown'
Plugin 'flazz/vim-colorschemes'
Plugin 'airblade/vim-gitgutter'
Plugin 'derekwyatt/vim-scala'
Plugin 'rust-lang/rust.vim'
Plugin 'davidhalter/jedi-vim'
Plugin 'tmux-plugins/vim-tmux'
Plugin 'dracula/vim'
call vundle#end()
filetype plugin indent on

" Tell powerline that we're using powerline compatible fonts
let g:airline_powerline_fonts = 1
let g:Powerline_symbols = 'fancy'
set encoding=utf-8
set t_Co=256
set fillchars+=stl:\ ,stlnc:\
set term=xterm-256color
set termencoding=utf-8

" Enable Rust autoformatting on buffer write
let g:rustfmt_autosave = 1

colorscheme simple256
set bg=dark
set nocompatible
set modeline
set modelines=5

syntax on

" Makes backspace a little smarter by allowing it to backspace 'up' lines
set backspace=indent,eol,start

" Show Matching Pairs
set showmatch

" Command Completion
"  This allows you to use tab to complete commands while in command mode
set wildmode=list:longest,full

" Abbreviate Messages
set shortmess+=filmnrxoOtT

" Editor Mode
"  Displays the current editor mode (such as Insert/Replace/etc)
set showmode
filetype on
set nowrap
set autoindent

" Set indentations to be the specified number of spaces
set shiftwidth=4

" Replace tabs with spaces
set expandtab

" Set the maximum length of a line to the specified number
set textwidth=80

" Set up some basic formatting of text and commands
set formatoptions+=tcq

" Matching, to be used with %
set matchpairs+=<:>

" Set the number of spaces to insert when tab is pressed
set tabstop=4

" Set line numbers to be on
set number

" Toggle paste mode so that indentation doesn't mess up when pasting
set pastetoggle=<F12>

set nobackup
set incsearch
set nohlsearch

" Set tags to look for these files
set tags=./tags,./TAGS,tags,TAGS,~/.tags,~/.vim/javatags

let html_use_css = 1

" Show Trailing Whitespace
highlight ExtraWhitespace ctermbg=red guibg=red
match ExtraWhitespace /\s\+$/
