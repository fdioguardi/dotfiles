"
" Autoloaded functions -- autocmds.vim
"

function! autocmds#trimWhiteSpace()
    let l:save = winsaveview()
    keeppatterns %s/\s\+$//e
    call winrestview(l:save)
endfunction
