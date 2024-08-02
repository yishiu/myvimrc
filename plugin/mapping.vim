" Use ctrl+d to remove line
imap <c-d> <esc>dd$a

" move line up/down with shift
nnoremap <S-j> :m .+1<CR>==
nnoremap <S-k> :m .-2<CR>==
vnoremap <S-j> :m '>+1<CR>gv=gv
vnoremap <S-k> :m '<-2<CR>gv=gv

"Simple search for visually selected words
vnoremap // y/\V<C-R>=escape(@",'/\')<CR><CR>

"Use "*" to search current word
nnoremap * *N

" Move current tab left/rigth
noremap <Leader>p  :tabmove -1<CR>
noremap <Leader>n :tabmove +1<CR>

" Mapping for quit file
noremap <Leader><space> :q<CR>

" Mapping for fzf search word
noremap <Leader>s :History/<CR>
