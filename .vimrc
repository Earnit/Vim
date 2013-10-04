" === MYVIMRC =========================================================

colorscheme hybrid
set ignorecase       "ignore case for searching
set laststatus=2
set mouse=a          "use mouse as a cursor  

set tabstop=4        "size of a hard tabstop
set shiftwidth=4     "size of an indent

set tags=./tags;     "search tag file recursively to the directory level above
map <F8> :!ctags -R --c++-kinds=+p --fields=+iaS --extra=+q .<CR>
map <F4> :qa<CR>     "Quit by F4
set cursorline       "Highlit cursorline
set nobackup         "Don't create temporary files file.name~
 
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
  set guioptions-=m  "remove menu bar
  set guioptions-=T  "remove toolbar
  set guioptions-=r  "remove right-hand scroll bar
  set guioptions-=L  "remove left-hand scroll bar
else
  " This is console Vim.
  if exists("+lines")
    set lines=50
  endif
  if exists("+columns")
    set columns=100
  endif
endif

if has("win32")
  set viminfo+=n$VIMRUNTIME/
endif


" === PLUGINS =========================================================

" === Pathogen ===
execute pathogen#infect()

" === NERDTree ===
autocmd VimEnter * NERDTree "autostart
autocmd VimEnter * wincmd p "switch to text window

" === Taglist ===
let Tlist_Enable_Fold_Column = 0  " not display the Vim fold column in the taglist
let Tlist_Use_Right_Window   = 1  " put plugin to right side
let Tlist_Auto_Highlight_Tag = 1  " autohighlighting of the current tag name 
let Tlist_Exit_OnlyWindow = 1     " exit if taglist is last window open
let Tlist_Show_One_File = 1       " only show tags for current buffer
if has("win32")
  let Tlist_Ctags_Cmd='"C:\Program Files (x86)\ctags\ctags.exe"'
endif
autocmd VimEnter * TlistToggle

" === Mark.vim === useful highlight
