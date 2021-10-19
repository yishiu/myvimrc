
if has("autocmd")
"restore cursor
  au BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$")
    \| exe "normal! g'\"" | endif

"enable cursorline only on current window
  autocmd WinEnter * setlocal cursorline
  autocmd WinLeave * setlocal nocursorline
  
  autocmd FileType python :iabbrev <buffer> iff if:<left>
  autocmd FileType javascript :iabbrev <buffer> iff if ()<left>

endif

"remove trailing space in every line but it makes restore cursor goes wrong :(
"autocmd BufWritePre * :%s/\s\+$//e

