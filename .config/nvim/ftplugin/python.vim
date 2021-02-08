"
" python.vim
"
setlocal textwidth=79   " 79 character lines
setlocal colorcolumn=79
setlocal nowrap

" execute python code
nnoremap <leader>e :w<CR>:! clear; python %<CR>
