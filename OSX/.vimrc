""""""""""""""""""""""""""""""""""""""""""""""""""
"Plugins
"Vim-Plug Section
"Specify a directory for plugins
call plug#begin('~/.vim/plugged')

"Insert plugins here with 'Plug '......' '
Plug 'morhetz/gruvbox'
Plug 'ajh17/VimCompletesMe'
Plug 'scrooloose/nerdtree'
Plug 'Raimondi/delimitMate'
Plug 'w0rp/ale'
Plug 'vim-airline/vim-airline'
Plug 'sheerun/vim-polyglot'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'noahfrederick/vim-noctu'
Plug 'jeetsukumaran/vim-buffergator'
Plug 'tpope/vim-vinegar'
Plug 'tpope/vim-sleuth'
Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-commentary'
"Plug 'neoclide/coc.nvim', {'do': { -> coc#util#install()}}
"https://github.com/neoclide/coc.nvim/wiki/Using-coc-extensions

"Initialize plugin system
call plug#end()
filetype plugin indent on  " Load plugins according to detected filetype.

"Set matchit plugin
runtime macros/matchit.vim

"Load other dotfiles
source ~/.vim/fzf.vim
source ~/.vim/ale.vim
source ~/.vim/nerdtree.vim
source ~/.vim/airline.vim
source ~/.vim/mappings.vim
"source ~/.vim/coc.vim

""""""""""""""""""""""""""""""""""""""""""""""""""
"General Settings
set nocompatible           " make it different to vi
set hidden                 " Switch between buffers without having to save first.
set autochdir  " Set directory automatically
set clipboard=unnamed

" Some server have issues with backup files, see #649
set nobackup
set nowritebackup

" The fish shell is not very compatible to other shells and unexpectedly
" breaks things that use 'shell'.
if &shell =~# 'fish$'
  set shell=/bin/bash
endif

""""""""""""""""""""""""""""""""""""""""""""""""""
"Appearance
"Color Scheme
colorscheme gruvbox
set background=dark
set laststatus  =2         " Always show statusline.
set display     =lastline  " Show as much as possible of the last line.
syntax on                  " Enable syntax highlighting.
set showmode               " Show current mode in command-line.
set showcmd                " Show already typed keys when more are expected.
set cursorline             " Find the current line quickly.
set ttyfast                " Faster redrawing.
set lazyredraw             " Only redraw when necessary.

"Searching
set incsearch              " Highlight while searching with / or ?.
set hlsearch               " Keep matches highlighted.
set report      =0         " Always report changed lines.
set synmaxcol   =200       " Only highlight the first 200 columns.
set wrapscan               " Searches wrap around end-of-file.

"Tabs and indentation
set autoindent             " Indent according to previous line.
set expandtab              " Use spaces instead of tabs.
set softtabstop =2         " Tab key indents by 2 spaces.
set shiftwidth  =2         " >> indents by 2 spaces.
set shiftround             " >> indents to next multiple of 'shiftwidth'.

"Set relative numbers
set number relativenumber
set nu rnu

"Windows
set splitbelow             " Open new windows below the current window.
set splitright             " Open new windows right of the current window.

"Characters
set list                   " Show non-printable characters.

if has('multi_byte') && &encoding ==# 'utf-8'
  let &listchars = 'tab:▸ ,extends:❯,precedes:❮,nbsp:±'
else
  let &listchars = 'tab:> ,extends:>,precedes:<,nbsp:.'
endif
