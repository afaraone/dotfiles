""""""""""""""""""""""""""""""""""""""""""""""""""
"Mappings
let mapleader = "\<space>"
set backspace   =indent,eol,start  " Make backspace work as you would expect.
set mouse=a                " Let mouse scroll work

"Navigation options
"Disable arrow keys
noremap <Up> <nop>
noremap <Left> <nop>
noremap <Right> <nop>
noremap <Down> <nop>

inoremap <Up> <nop>
inoremap <Left> <nop>
inoremap <Right> <nop>
inoremap <Down> <nop>

"Buffer
"move among buffers with CTRL
map <leader>j :bnext<CR>
map <leader>k :bprev<CR>
nnoremap <leader>q :bd<CR>
map <leader>n :enew<CR>

"Move vertically by visual line and center screen
map j jzz
map k kzz
nnoremap j gjzz
nnoremap k gkzz
map G Gzz

"Set move to beginning of line with  B and end of line with E
noremap B 0
noremap E $
noremap $ <nop>
noremap ^ <nop>

"Navigation Options
"Move lines with ctrl+jk
" nnoremap <C-j> :m .+1<CR>==
" nnoremap <C-k> :m .-2<CR>==
" vnoremap <C-j> :m '>+1<CR>gv=gv
" vnoremap <C-k> :m '<-2<CR>gv=gv

"Paste options
"p now indents correctly
nnoremap p p=`]
nnoremap P P=`]

"Ctrl+p now puts without indentation
"nnoremap <C-p> p
"nnoremap <C-P> P

"Window navigation
"map <leader>w :wincmd w<CR>
