"
" python.vim
"
setlocal textwidth=79   " 79 character lines
setlocal colorcolumn=79
setlocal nowrap

" execute code
nnoremap <leader>e :w<CR>:vs term://clear; python %<CR>

" format code
if executable("black")
    setlocal formatprg=black\ -q\ -l\ 79\ -
endif
