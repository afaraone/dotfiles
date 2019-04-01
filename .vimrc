"Vim-Plug Section
"Specify a directory for plugins
call plug#begin('~/.vim/plugged')

"Insert plugins here with 'Plug '......' '
Plug 'morhetz/gruvbox'
Plug 'ajh17/VimCompletesMe'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-commentary'
Plug 'Raimondi/delimitMate'
Plug 'w0rp/ale'
Plug 'vim-airline/vim-airline'
Plug 'sheerun/vim-polyglot'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'noahfrederick/vim-noctu'
Plug 'rust-lang/rust.vim'
Plug 'junegunn/goyo.vim'
Plug 'christoomey/vim-tmux-navigator'

"Initialize plugin system
call plug#end()

"Set matchit plugin
runtime macros/matchit.vim

"Color Scheme
colorscheme gruvbox
set background=dark

"Tab and indent settings
let delimitMate_expand_cr=1
let delimitMate_matchpairs = "(:),[:],{:}"
filetype indent plugin on
set autoindent             " Indent according to previous line.
set expandtab              " Use spaces instead of tabs.
set softtabstop =2         " Tab key indents by 4 spaces.
set shiftwidth  =2         " >> indents by 4 spaces.
set shiftround             " >> indents to next multiple of 'shiftwidth'.
set smarttab

"Folding Options
autocmd BufWinLeave *.* mkview
autocmd BufWinEnter *.* silent loadview 

" Misc Settings
set nocompatible              "disable Vi
if has("autocmd")
  filetype plugin indent on   " Load plugins according to detected filetype.
endif

syntax on                     " Enable syntax highlighting.
set clipboard=unnamedplus           " sets copy paste to system clipboard
set number relativenumber "set relative numbers
set backspace   =indent,eol,start   " Make backspace work as you would expect.
set hidden                          " Switch between buffers without having to save first.
set laststatus  =2                  " Always show statusline.
set display     =lastline           " Show as much as possible of the last line.

set showmode                        " Show current mode in command-line.
set showcmd                         " Show already typed keys when more are expected.

set incsearch                       " Highlight while searching with / or ?.
set hlsearch                        " Keep matches highlighted.

set wildmenu                        " Create menu in buffer when autocompleting pathnames

set ttyfast                         " Faster redrawing.
set lazyredraw                      " Only redraw when necessary.

set splitbelow                      " Open new windows below the current window.
set splitright                      " Open new windows right of the current window.
set list                            " Show non-printable characters.

set cursorline                      " Find the current line quickly.
set wrapscan                        " Searches wrap around end-of-file.
set report      =0                  " Always report changed lines.
set synmaxcol   =200                " Only highlight the first 200 columns.

set complete-=i                     " disable scanning included files
set complete-=t                     " disable searching tags

let g:ale_enabled = 0               " disable ALE


if has('multi_byte') && &encoding ==# 'utf-8'
  let &listchars = 'tab:▸ ,extends:❯,precedes:❮,nbsp:±'
else
  let &listchars = 'tab:> ,extends:>,precedes:<,nbsp:.'
endif

" The fish shell is not very compatible to other shells and unexpectedly
" breaks things that use 'shell'.
if &shell =~# 'fish$'
  set shell=/bin/bash
endif

"Disable error bells
set noerrorbells
set novisualbell
set t_vb=

" Backup Options
" https://github.com/mhinz/vim-galore#handling-backup-swap-undo-and-viminfo-files
set backup
set backupdir   =$HOME/.vim/files/backup/
set backupext   =-vimbackup
set backupskip  =
set directory   =$HOME/.vim/files/swap//
set updatecount =100
set undofile
set undodir     =$HOME/.vim/files/undo/
set viminfo ='100,n$HOME/.vim/files/info/viminfo

" Navigation Options
"Move lines with alt+hjkl
"nnoremap <C-j> :m .+1<CR>==   NOT WORKING
"nnoremap <C-k> :m .-2<CR>==   NOT WORKING
vnoremap <C-j> :m '>+1<CR>gv=gv
vnoremap <C-k> :m '<-2<CR>gv=gv

"Disable arrow keys
noremap <Up> <nop>
noremap <Left> <nop>
noremap <Right> <nop>
noremap <Down> <nop>

inoremap <Up> <nop>
inoremap <Left> <nop>
inoremap <Right> <nop>
inoremap <Down> <nop>

"Move vertically by visual line
nnoremap j gj
nnoremap k gk

"Set move to beginning of line with  B and end of line with E
nnoremap B ^
nnoremap E $
nnoremap $ <nop>
nnoremap ^ <nop>

"Netrw
let g:netrw_liststyle = 3
let g:netrw_banner = 0
let g:netrw_browse_split = 4
let g:netrw_altv = 1
let g:netrw_winsize = 25

"Toggle Netrw function
let g:NetrwIsOpen=0

function! ToggleNetrw()
    if g:NetrwIsOpen
        let i = bufnr("$")
        while (i >= 1)
            if (getbufvar(i, "&filetype") == "netrw")
                silent exe "bwipeout " . i
            endif
            let i-=1
        endwhile
        let g:NetrwIsOpen=0
    else
        let g:NetrwIsOpen=1
        silent Lexplore
    endif
endfunction

nnoremap <C-o> :call ToggleNetrw()<CR>

"Paste options
"p now indents correctly
:nnoremap p p=`]
:nnoremap P P=`]

"Ctrl+p now puts without indentation
:nnoremap <C-p> p
:nnoremap <C-P> P

