set nocompatible
filetype off

" Install Plugins via vim-plug
call plug#begin('~/.vim/plugged')
Plug 'junegunn/vim-easy-align'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'flazz/vim-colorschemes'
Plug 'rust-lang/rust.vim'
Plug 'dag/vim-fish'
Plug 'raimon49/requirements.txt.vim'
Plug 'airblade/vim-gitgutter'
Plug 'ElmCast/elm-vim'
Plug 'morhetz/gruvbox'
call plug#end()
filetype plugin indent on

set encoding=utf-8
set t_Co=256
set fillchars+=stl:\ ,stlnc:\
set term=xterm-256color
set termencoding=utf-8
let g:gruvbox_contrast_dark = 'hard'
let g:gruvbox_number_column = 'bg2'
let g:gruvbox_sign_column = 'bg1'
set cursorline
set cursorlineopt=number
colorscheme PaperColor

set relativenumber

" Enable Rust autoformatting on buffer write
let g:rustfmt_autosave=1

" Git Gutter Settings
set updatetime=100

set bg=dark
set modeline
set modelines=5

syntax on

" Makes backspace a little smarter by allowing it to backspace 'up' lines
set backspace=indent,eol,start

" Show Matching Pairs
set showmatch

" Command Completion
"  Allows use of Tab to complete commands in Command mode
set wildmode=list:longest,full

" Turn this back on if you're not using Airline
" set showmode
set noshowmode

filetype on

" Don't wrap lines at window margin
set nowrap

" Automatically indent continuations
set autoindent

" Set indentation width
set shiftwidth=2

" Replace tabs with spaces
set expandtab

" Set the column width where text will be broken over multiple lines
set textwidth=100

" Basic formatting of text and commands
set formatoptions+=tcq

" Matching, used with %
set matchpairs+=<:>

" Number of spaces to insert when Tab is pressed
set tabstop=2

" Use line numbers
set number

" And Use Hybrid Line Numbering
set relativenumber

" Hit the specified key to go into paste mode
set pastetoggle=<F12>

" Who needs backups? ;)
set nobackup

" The cursor will follow the current match while searching
set incsearch

" Don't keep showing highlighted search terms.
set nohlsearch

" Set a ruler
set colorcolumn=100

" Set tags to look for these files
set tags=./tags,./TAGS,tags,TAGS,~/.tags,~/.vim/javatags

let html_use_css = 1

" Show Trailing Whitespace
highlight ExtraWhitespace ctermbg=magenta guibg=red
match ExtraWhitespace /\s\+$/

" Show git status in the status bar.
function! GitStatus()
  let [a,m,r[ = GetGutterGetHunkSummary()
  return printf('+%d ~%d -%d', a, m, r)
endfunction
set statusline+=%{GitStatus()}

" Always show gitgutter signcolumn
set signcolumn=yes

" And set some fancy colors
highlight GitGutterAdd guifg=#009900 ctermfg=2
highlight GitGutterChange guifg=#bbbb00 ctermfg=3
highlight GitGutterDelete guifg=#ff2222 ctermfg=1

" Do not let colorschemes override terminal background color
highlight Normal ctermbg=NONE
