" .vimrc 
" Dustin Schoenbrun
" 
" This file defines settings and preferences for the vim text editor.
" Modified from a .vimrc file from Gustav Pican (whom I should buy a beer for)

" Enable Pathogen
"execute pathogen#infect()
set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'gmarik/Vundle.vim'
Plugin 'scrooloose/syntastic'
Plugin 'bling/vim-airline'
Plugin 'scrooloose/nerdtree'
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
call vundle#end()
filetype plugin indent on

" Tell powerline that we're using powerline compatible fonts
let g:airline_powerline_fonts = 1

" Enable Rust autoformatting on buffer write
let g:rustfmt_autosave = 1

" Set the colorscheme
colorscheme PaperColor

" Set the background type
set bg=dark

" vim Extensions
"  These essentially make vim VERY non-vi compatable, but that's a good thing
set nocompatible
set modeline
set modelines=5

" == User Interface ==
"  This section defines all sorts of options to tweak the UI for vim

" Syntax Highlighting
"  Highlights keywords, strings, numbers, etc in source files.  You'd have to 
"  be some sort of nilhilist to not have this on working on code.
syntax on

" Backspace Options
"  Makes backspace a little smarter by allowing it to backspace 'up' lines 
"  among other such nicities
set backspace=indent,eol,start

" Show Matching Pairs
"  Highlight matching parenthesis, brackets, etc.  Really handy.
set showmatch

" Command Completion
"  This allows you to use tab to complete commands while in command mode
set wildmode=list:longest,full

" Abbreviate Messages
"  Shortens messages on the status line.  It'll prevent all of those 'press
"  enter' messages from popping up
set shortmess+=filmnrxoOtT

" Editor Mode
"  Displays the current editor mode (such as Insert/Replace/etc)
set showmode

" Command Line-Fu
"  Makes the command line better through some crazy string magic.  I honestly
"  have no idea what the hell the thing below does.
if has('cmdline_info')
    set ruler
    set rulerformat=%30(%=\:b%n%y%m%r%w\ %l,%c%V\ %P%)
    set showcmd
endif

" Status Line-Fu
"  Makes the status line better again through some crazy string magic.  Yet
"  again, I have no idea what the frak this is doing
if has('statusline')
    " Show the status line only if there are at least two windows
    set laststatus=2
    set statusline=%<%f\ %=\:\b%n%y%m%r%w\ %l,%c%V\ %P
endif

" == Editing ==
"  This section has a bunch of tweaks for editing text.

" Filetype Detection
"  Enables filetype detection so that vim can act accordingly to the file based
"  on the extension
filetype on

" Enable file type plugins
filetype plugin on
filetype indent on

" Wrap Long Lines
set nowrap

" Turn on auto-indentation, a life saver in just about any language
set autoindent

" Set indentations to be the specified number of spaces
set shiftwidth=4

" Replace tabs with spaces
set expandtab

" Set the maximum length of a line to the specified number
set textwidth=100

" Set up some basic formatting of text and commands
set formatoptions+=tcq

" Matching, to be used with %
set matchpairs+=<:>

" Make the colors appear better on a light/dark background terminal
"set bg=light
set bg=dark
colorscheme desertEx

" Set the number of spaces to insert when tab is pressed
set tabstop=4

" Set line numbers to be on
set number

" Toggle paste mode so that indentation doesn't mess up when pasting
set pastetoggle=<F12>

" Load man plugin
runtime! ftplugin/man.vim

autocmd FileType c,cpp call <SID>cstuff()
function <SID>cstuff()
    set cindent
    set formatoptions+=croql
    set formatoptions-=t
endfunction

" == gVim and Misc ==

" Set up some gVim options here rather than in gvimrc
if has('gui_running')
    set guioptions-=T 
    set guioptions-=r
    set lines=40
    set columns=90
    colorscheme PaperColor
    set bg=dark
    set guifont=Fantasque\ Sans\ Mono\ 10
    "set guifont=Liberation\ Mono\ for\ Powerline\ 9
endif

set nobackup
set incsearch
set nohlsearch

" Set tags to look for these files
set tags=./tags,./TAGS,tags,TAGS,~/.tags,~/.vim/javatags

nnoremap <silent> <F8> :WMToggle<CR>
map <c-w><c-t> :WMToggle<cr>
map <c-w><c-f> :FirstExplorerWindow<cr>
map <c-w><c-b> :BottomExplorerWindow<cr>
let winManagerWindowLayout = 'FileExplorer|TagList,BufExplorer'
let winManagerWidth = 40

let html_use_css = 1

let vjde_completion_key='<c-space>'

