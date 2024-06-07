"not compatible for vi
set nocompatible
"auto shift based on file type
filetype on
filetype indent on

"basic settings
set number
set relativenumber
set autoindent
set cursorline
set wrap

"set ":new" pane to below, ":vnew" pane to right
set splitbelow
set splitright
"always show the tab page name
set showtabline=2

"set tab length = 4
set tabstop=4
"set << or >> shift length = 4
set shiftwidth=4
"expandtab expand all <tab> into space
set expandtab

"set search highlight & increase search
set ignorecase
set smartcase
set incsearch
set hlsearch

"from https://raw.github.com/altercation/vim-colors-solarized/master/colors/solarized.vim in ~/.vim/colors/
"set the color
set t_Co=256
set background=dark
let g:solarized_termcolors=256
let g:solarized_termtrans=1
colorscheme solarized

"set insert(paste) toggle
set pastetoggle=<F3>

"File search in vim
filetype plugin on

"finding files
set path+=**
set wildmenu

"ctags for vim
"create tags file in the current directory
command! MakeTags !ctags -R .

"vim-plug package manager
call plug#begin('~/.vim/plugged')

Plug 'preservim/nerdtree'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'google/vim-searchindex'
Plug 'ycm-core/YouCompleteMe'

call plug#end()

"set with system clipboard, need to have "vim --version" enable clip_board
"e.g. install vim-gtk
"However, using tmux to copy text is enough.
"set clipboard=unnamedplus

"enable visual mode line count
set showcmd

"set leader key for vim
let mapleader = ' '

"set folding method
let g:xml_syntax_folding=1
" Autocommand to set foldmethod based on file type
augroup FileTypeFold
  autocmd!
  " C and C++
  autocmd FileType c,cpp,xml setlocal foldmethod=syntax
  " Python
  autocmd FileType python setlocal foldmethod=indent
augroup END
set nofoldenable

set ruler
