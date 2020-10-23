"
" python.vim
"
setlocal textwidth=79   " 79 character lines
setlocal nowrap
setlocal signcolumn=yes	" allways how sign column besides number column

" execute python code
nnoremap <leader>e :w<CR>:! clear; python %<CR>
