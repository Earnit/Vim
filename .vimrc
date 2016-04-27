" === VUNDLE ==========================================================

set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'
Plugin 'kien/ctrlp.vim'
Plugin 'sjl/gundo.vim'
Plugin 'bling/vim-airline'


" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" === MYVIMRC =========================================================

set t_Co=256
set term=screen-256color
colorscheme hybrid
syntax on
set nu

set ignorecase "ignore case for searching
set hlsearch "highlight all search matches
set laststatus=2
set mouse=a "use mouse as a cursor

set tabstop=4 "size of a hard tabstop
set shiftwidth=4 "size of an indent
set autoindent "copy the indentation from the previous line
set expandtab "insert 'softtabstop' amount of space characters
set list listchars=tab:>-,trail:·,extends:> "highlight unwanted spaces

set tags=./tags; "search tag file recursively to the directory level above
map <F8> :!ctags -R --c++-kinds=+p --fields=+iaS --extra=+q .<CR>
nnoremap <F5> :GundoToggle<CR>
map <F4> :qa<CR> "Quit by F4
set cursorline "Highlit cursorline
set nobackup "Don't create temporary files file.name~
"Set Ctrl+S to save file in all modes
nmap <c-s> :w<CR>
vmap <c-s> <Esc><c-s>gv
imap <c-s> <Esc><c-s>

"nnoremap <Right> <C-w>l
"nnoremap <Left> <C-w>h
"nnoremap <Up> <C-w>k
"nnoremap <Down> <C-w>j

" GUI is running or is about to start.
if has("gui_running")
" Maximize gvim window.
  set lines=50 columns=200
  set guioptions-=m "remove menu bar
  set guioptions-=T "remove toolbar
  set guioptions-=r "remove right-hand scroll bar
  set guioptions-=L "remove left-hand scroll bar
else
" This is console Vim.
  "if exists("+lines")
  "  set lines=50
  "endif
  "if exists("+columns")
  "  set columns=100
  "endif
endif

if has("win32")
  set viminfo+=n$VIMRUNTIME/
endif
