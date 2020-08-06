"
" autocmd.vim
"

fun! TrimWhiteSpace()
    let l:save = winsaveview()
    keeppatterns %s/\s\+$//e
    call winrestview(l:save)
endfun
" delete trailing white spaces on save
autocmd BufWritePre * :call TrimWhiteSpace()

" disables automatic commenting on new line
autocmd FileType * setlocal formatoptions-=c formatoptions -=r formatoptions-=o

" center the cursor when entering insert mode
autocmd InsertEnter * norm zz

" Resize panes when terminal gets resized
autocmd VimResized * :wincmd =

" Reload buffers on vim resize
autocmd VimResized * exe 'normal! \<c-w>='
