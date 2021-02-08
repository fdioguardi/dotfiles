"
" sh.vim
"

setlocal textwidth=80
setlocal colorcolumn=80
setlocal nowrap
setlocal expandtab
setlocal shiftwidth=2

nnoremap <leader>e :w<CR>:! clear; bash %<CR>
