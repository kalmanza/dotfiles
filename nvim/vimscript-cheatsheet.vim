""" Comments a preceded by open quotes
" When mapping use <c-u> to clear the line after : to elminate any range
" information 
nnoremap eh :<c-u>echo "hello"<cr>

" Never use == because it is case sensitive based on the user option
" ignorecase. Use the follwing instead.
==? "always ignore case
==# "always case sensitive
