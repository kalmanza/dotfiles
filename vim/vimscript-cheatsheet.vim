" Comments a preceded by open quotes
" Use folds in vimscript to organize things
" Mapping-------------------- {{{"
" When mapping use <c-u> to clear the line after : to elminate any range
" information 
nnoremap eh :<c-u>echo "hello"<cr>
" }}}

" Abbreviations-------------------- {{{"
"Abbreviations are used in insert or command line mode
iabbrev text replacement

"Use <expr> to replace the text with the result of an expression
"This will replace ddd with the formatted date and time
iabbrev <expr> ddd strftime('%c')
" }}}

" Comparisons-------------------- {{{"
" Never use == because it is case sensitive based on the user option
" ignorecase. Use the follwing instead.
==? "always ignore case
==# "always case sensitive

" Booleans are either 0 representing false and >=1 representing true
" return 0 or 1 for boolean results; There are no true or false keywords
" }}}

"Control Flow-------------------- {{{"
" Branching takes the form:
if condition
  "do 
elseif
  "...
else
  "...
endif
" }}}
