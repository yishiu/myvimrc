func Eatchar(pat)
  let c = nr2char(getchar(0))
  return (c =~ a:pat) ? '' : c
endfunc

if has("autocmd")
"restore cursor
  au BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$")
    \| exe "normal! g'\"" | endif

"enable cursorline only on current window
  autocmd WinEnter * setlocal cursorline
  autocmd WinLeave * setlocal nocursorline

"type iff+<space> to create if() automatically
  autocmd FileType python :iabbrev <buffer> iff if:<left>
  autocmd FileType javascript,c,cpp :iabbrev <buffer> iff if ()<left><C-R>=Eatchar('\s')<CR>
endif

"remove trailing space in every line but it makes restore cursor goes wrong :(
"autocmd BufWritePre * :%s/\s\+$//e
