augroup ft_markdown
  autocmd!
  autocmd Filetype markdown nnoremap <localleader>l :set operatorfunc=<SID>LinkOperator<cr>g@
  autocmd Filetype markdown vnoremap <localleader>l :<c-u>call <SID>LinkOperator(visualmode())<cr>
augroup END

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
