nnoremap <localleader>l :set operatorfunc=<SID>LinkOperator<cr>g@
vnoremap <localleader>l :<c-u>call <SID>LinkOperator(visualmode())<cr>

function! s:LinkOperator(type)
  let save_unnamed_register = @@
  if a:type ==# 'v'
    execute "normal! `<v`>d"
  elseif a:type ==# 'char'
    execute "normal! `[v`]d"
  else
    echom "returning"
    return
  endif
  let @@ = "[".@@."]()"
  execute "normal! P"
  let @@ = save_unnamed_register
  startinsert
endfunction
