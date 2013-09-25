"My own part of file
colorscheme hybrid
 
"Pathogen plugin
"Call pathogen#runtime_append_all_bundles()
call pathogen#incubate()
 
"NERDTree plugin
autocmd VimEnter * NERDTree
autocmd VimEnter * wincmd p
 
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
 
"Taglist plugin
let Tlist_Ctags_Cmd='"C:\Program Files (x86)\ctags\ctags.exe"'
let Tlist_Use_Right_Window   = 1
let Tlist_Auto_Highlight_Tag = 1
let Tlist_Exit_OnlyWindow = 1     " exit if taglist is last window open
let Tlist_Show_One_File = 1       " Only show tags for current buffer
autocmd VimEnter * TlistToggle
 
map <F4> :qa<CR>    "Quit by F12
set cursorline       "Highlit cursorline
set nobackup         "Don't create temporary files file.name~
 
"Set Ctrl+S to save file in all modes
nmap <c-s> :w<CR>
vmap <c-s> <Esc><c-s>gv
imap <c-s> <Esc><c-s>
 
"Indexer plugin
let g:indexer_indexerListFilename = "c:\Program Files (x86)\Vim\_indexer_files"
 
"nnoremap <Right> <C-w>l
"nnoremap <Left> <C-w>h
"nnoremap <Up> <C-w>k
"nnoremap <Down> <C-w>j
