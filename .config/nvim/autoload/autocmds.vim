"
" autoload/autocmds.vim
"

function! autocmds#trimWhiteSpace() abort
    let l:save = winsaveview()
    keeppatterns %s/\s\+$//e
    call winrestview(l:save)
endfunction
