"General editor settings
set tabstop=2
set nocompatible
set shiftwidth=2
set expandtab
set autoindent
set smartindent
set ruler
set showcmd
set incsearch
set shellslash
set number
set relativenumber
set cino+=L0 
syntax on
filetype indent on
filetype on
setlocal indentkeys-=:
set number

vnoremap <C-c> "+y
map <C-v> "+p

"keybindings for { completion, "jk" for escape, ctrl-a to select all
inoremap {<CR>  {<CR>}<Esc>O
inoremap {}     {}
imap jk         <Esc>
map <C-;>       <esc> : <CR>
map <C-a> <esc>ggVG<CR>
"set belloff=all

"Append template to new C++ files
autocmd BufNewFile *.cpp 0r /home/dipto_debdip/cp/temp.cpp

"Compile and run
"Note that this line requires the build.sh script!
autocmd filetype cpp nnoremap <F9> :w <bar> !build.sh %:r <CR> 
autocmd filetype cpp nnoremap <F10> :!./%:r<CR>
" set autoread
"autocmd BufWritePost * silent! !start /min Autoformat.bat <afile>
"autocmd BufWritePost * redraw!autocmd TextChanged,TextChangedI <buffer> silent write
