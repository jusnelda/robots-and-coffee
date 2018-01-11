" Setting the titlestring to display the name of the current file
set titlestring=%t%(\ %M%)%(\ (%{expand(\"%:p:h\")})%)%(\ %a%)\ -\ %{v:servername}

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" You don't need set nocompatible, details here:
" https://www.reddit.com/r/vim/wiki/vimrctips
filetype off

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Pathogen
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
execute pathogen#infect()

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"=> Airline (status line) https://github.com/vim-airline/vim-airline
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:airline_theme = 'tomorrow'
" disable extension loading
let g:airline#extensions#disable_rtp_load = 1
" Configure the layout of the sections 
let g:airline#extensions#default#layout = [
      \ [ 'a', 'b', 'c'  ],
      \ [ 'x', 'y', 'z'  ]
      \ ]

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Status line
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Always show the status line
set laststatus=2

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"=> General
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Sets how many lines of history VIM has to remember
set history=500

"Create a map leader to do extra key combinations like <leader>w writes a file
" default is \ so this doesn't to be set
"let mapleader = "/"

" Enable syntax highlighting
syntax enable 
" Enable showing of whitespace
set list
set listchars=trail:-

" Colorschemes stored in .vim/colors
colorscheme afterglow

" Normal mode  remapping saving without quitting and quitting with saving
nnoremap <leader>w :w<CR>
nnoremap <leader>q :wq<CR>

" Insert mode remapping getting out of brackets
inoremap <C-l> <Esc>la
inoremap jj <Esc>

" Ignore case when searching
set ignorecase

"When searching, try to be smart about cases
set smartcase

" Highlight search results and search as characters are entered
set hlsearch
highlight Search cterm=NONE ctermfg=grey ctermbg=blue

" Silence search highlighting
nnoremap <leader>sh :nohlsearch<Bar>:echo<CR>

" Show matching brackets when text indicator is over them
set showmatch

" Set utf8 as standard encoding and en_US as the standard language
set encoding=utf8

" Always(!) be aware of what these taboptions do! Important!
" https://www.reddit.com/r/vim/wiki/tabstop
" 1 tab == 2 spaces
set shiftwidth=2
" Use spaces instead of tabs
set expandtab
set tabstop=2
" Be smart when using tabs 
set smarttab

" Colored column at 90 to avoid going to far to the right
"set colorcolumn=90
" Disabled to keep vim from breaking lines
set textwidth=0

set autoindent "Auto indent
filetype plugin indent on " This should be enough for indentation
" Don't use smartindent, it is an old script. Most languages have either
" specific indentation function or use cindent with specific options

set wrap "Wrap lines

" Enable line numbers
set number
" Cursorcolumn
set cursorcolumn
"Fold away parts of the file
set foldmethod=manual

" Paste from everywhere
nnoremap <leader>p :set paste<CR>
" Copy to outside
vnoremap <leader>y "+y
" Select all
nnoremap <leader>a ggVG

" Keep three lines between the cursor and the edge of the screen
set scrolloff=3


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Markdown
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"let g:vim_markdown_folding_disabled = 0
set conceallevel=2
" Vim sometimes has trouble identifying a markdown file, this helps
autocmd BufNewFile,BufRead *.md set filetype=markdown
" Open markdown files with firefox, this only works if you have a plugin
" installed in firefox, that can show markdown files
" https://addons.mozilla.org/en-US/firefox/addon/markdown-viewer/
autocmd BufEnter *.md noremap <F5> :exe ':silent !firefox %'<CR>

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" IndentLine Plugin for whitespaces
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:indentLine_filetypeExclude = ['tex']
let g:indentLine_leadingSpaceChar = '.'
let g:indentLine_leadingSpaceEnabled = 2
let g:indentLine_concealcursor = ''
let g:indentLine_conceallevel = 1


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" LaTeX - if you don't know what LaTeX is (yet), delete this part.
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" IMPORTANT: grep will sometimes skip displaying the file name if you
" " search in a singe file. This will confuse Latex-Suite. Set your grep
" " program to always generate a file-name.
"set grepprg=grep\ -nH\ $*
" OPTIONAL: Starting with Vim 7, the filetype of empty .tex files defaults to
" " 'plaintex' instead of 'tex', which results in vim-latex not being loaded.
" " The following changes the default filetype back to 'tex':
let g:tex_flavor='latex'
au FileType tex setlocal nocursorline
au FileType tex setlocal nocursorcolumn
au FileType tex :NoMatchParen



