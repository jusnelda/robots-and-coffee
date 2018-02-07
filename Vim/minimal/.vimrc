
" You don't need set nocompatible, details here:
" https://www.reddit.com/r/vim/wiki/vimrctips

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"=> General
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Sets how many lines of history VIM has to remember
set history=500

" Enable syntax highlighting
syntax enable

" Ignore case when searching
set ignorecase

"When searching, try to be smart about cases
set smartcase

" Highlight search results and search as characters are entered
set hlsearch
highlight Search cterm=NONE ctermfg=grey ctermbg=blue

" Show matching brackets when text indicator is over them
set showmatch

" Set utf8 as standard encoding and en_US as the standard language
set encoding=utf8

set autoindent "Auto indent
filetype plugin indent on " This should be enough for indentation
" Don't use smartindent, it is an old script. Most languages have either
" specific indentation function or use cindent with specific options

" Enable line numbers
set number

