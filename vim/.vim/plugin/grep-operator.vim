nnoremap <leader>g :set operatorfunc=<SID>GrepOperator<cr>g@
vnoremap <leader>g :<c-u> call <SID>GrepOperator(visualmode())<cr>
nnoremap <leader>G :call <SID>InputRGrep()<cr>

function! s:GrepOperator(type)
  let save_unnamed_register = @@

  if a:type ==# 'v'
    execute "normal! `<v`>y"
  elseif a:type ==# 'char'
    execute "normal! `[y`]"
  else
    return
  endif
  silent! execute ":grep! -R" shellescape(@@) "."
  redraw!
  copen
  let @@ = save_unnamed_register
endfunction

function! s:InputRGrep()
  let pattern = input("search: ")
  silent! execute ":grep! -R" shellescape(pattern) "."
  redraw!
  copen
endfunction
