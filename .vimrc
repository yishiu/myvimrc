"not compatible for vi
set nocompatible
"auto shift based on file type
filetype on
filetype indent on

"basic settings
set nu
set relativenumber
set ai
set cursorline
set bg=light
"set noshowmode

"set "new" pane to below, "vnew" pane to right
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

" move line up/down with shift
nnoremap <S-j> :m .+1<CR>==
nnoremap <S-k> :m .-2<CR>==
inoremap <S-j> <Esc>:m .+1<CR>==gi
inoremap <S-k> <Esc>:m .-2<CR>==gi
vnoremap <S-j> :m '>+1<CR>gv=gv
vnoremap <S-k> :m '<-2<CR>gv=gv

"restore cursor
if has("autocmd")
  au BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$")
    \| exe "normal! g'\"" | endif
endif

"remove trailing space in every line but it makes restore cursor goes wrong :(
"autocmd BufWritePre * :%s/\s\+$//e


" put https://raw.github.com/altercation/vim-colors-solarized/master/colors/solarized.vim
" in ~/.vim/colors/ and uncomment:
set t_Co=256
set background=dark
let g:solarized_termcolors=256
let g:solarized_termtrans=1
colorscheme solarized

"set insert(paste) toggle
set pastetoggle=<F3>

"Simple search for visually selected words
vnoremap // y/\V<C-R>=escape(@",'/\')<CR><CR>

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

call plug#end()

set clipboard=unnamed
