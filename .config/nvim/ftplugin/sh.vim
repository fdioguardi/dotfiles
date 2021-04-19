"
" sh.vim
"

setlocal textwidth=80
setlocal colorcolumn=80
setlocal shiftwidth=2
setlocal nowrap
setlocal expandtab

nnoremap <leader>e :w<CR>:vs term://clear; bash %<CR>
