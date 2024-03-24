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
set splitright

let g:netrw_banner = 0
let g:netrw_browse_split = 4
let g:netrw_winsize = 15
let g:netrw_liststyle = 3
let g:netrw_altv = 1

autocmd WinEnter * if winnr('$') == 1 && getbufvar(winbufnr(winnr()), "&filetype") == "netrw" || &buftype == "quickfix" |q|endif

augroup ProjectDrawer
    autocmd!
    autocmd VimEnter * :Lexplore
    autocmd Tabnew * call feedkeys(":Lexplore\<CR>", 'n')
augroup End 

inoremap (<tab> ()<esc>ha
inoremap (<s-tab> ()<esc>ha
inoremap {<tab> {}<esc>ha
inoremap {<s-tab> {}<esc>ha
inoremap <<tab> <><esc>ha
inoremap <<s-tab> <><esc>ha
inoremap [<tab> []<esc>ha
inoremap {<CR> {<CR>}<esc>ko<tab>
inoremap {<s-CR> {<CR>}<esc>ko<tab>
inoremap (<CR> (<CR>)<esc>ko<tab>
inoremap (<s-CR> (<CR>)<esc>ko<tab>
inoremap [<CR> [<CR>]<esc>ko<tab>
inoremap "<tab> ""<esc>ha
inoremap "<s-tab> ""<esc>ha
inoremap '<tab> ''<esc>ha
inoremap <il> <il></il><esc>bba
inoremap <head> <head></head><esc>bba
inoremap <body> <body></body><esc>bba
inoremap <p> <p></p><esc>bba
inoremap <title> <title></title><esc>bba


nnoremap <S-Right> <C-w>l
nnoremap <s-Left> <C-w>h
nnoremap <s-Down> <C-w>j
nnoremap <s-Up> <C-w>k

au Filetype netrw nmap <buffer> <s-Up> <Up>
au Filetype netrw nmap <buffer> <s-Down> <Down>
au Filetype netrw nnoremap <buffer> t :call Ntab()<CR>
au Filetype netrw nnoremap <buffer> p :call Nhor()<CR>
au Filetype netrw nnoremap <buffer> o :call Nvert()<CR>

function! Ntab()
     :norm v
     let g:path=expand('%:p') 
     :q!
     execute 'tabnew' g:path 
     execute "normal \<c-w>l"
endfunction

function! Nvert()
     :norm v
     let g:path=expand('%:p') 
     :q!
     execute 'belowright vnew' g:path 
endfunction

function! Nhor()
     :norm v
     let g:path=expand('%:p') 
     :q!
     execute 'belowright new' g:path 
endfunction
