"
" coc-explorer.vim
"

" disable netrw
let loaded_netrwPlugin = 0

" open/close explorer
nmap <silent> <space>e :CocCommand explorer<CR>

" close Vim when the explorer is the only buffer left
autocmd BufEnter * if (winnr("$") == 1 && &filetype == 'coc-explorer') | q | endif

" open exlorer when editing a directory
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) | exe 'CocCommand explorer' getcwd()."/".argv()[0] | exe 'bd' | endif
