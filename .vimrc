syntax on
filetype plugin on 
"search down into subfolders
set path+=** path+=*
set wildmenu

set belloff=error
set nocompatible
set number relativenumber
set smartindent
set tabstop=4 softtabstop=4
set shiftwidth=4
set smartcase
set incsearch
set expandtab
set nobackup
set noswapfile
set undodir=~/.vim/undo
set undofile
set cursorline
set showmode
set hls
set incsearch



inoremap (<tab> ()<esc>ha
inoremap {<tab> {}<esc>ha
inoremap {<CR> {<CR>}<esc>ko<tab>
inoremap "<tab> ""<esc>ha
inoremap '<tab> ''<esc>ha
inoremap <il> <il></il><esc>bba
inoremap <head> <head></head><esc>bba
inoremap <body> <body></body><esc>bba
inoremap <p> <p></p><esc>bba
inoremap <title> <title></title><esc>bba



