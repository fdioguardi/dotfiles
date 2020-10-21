"
" autocmd.vim
"

" delete trailing white spaces on save
autocmd BufWritePre * :call autocmds#trimWhiteSpace()

" Breefly highlight yanked text
autocmd TextYankPost * lua require'vim.highlight'.on_yank{ timeout = 300, on_visual = false }

" Make current window more obvious
autocmd BufEnter,FocusGained,VimEnter,WinEnter * if autocmds#should_colorcolumn() | let &l:colorcolumn='+' . join(range(0, 254), ',+') | endif
autocmd FocusLost,WinLeave * if autocmds#should_colorcolumn() | let &l:colorcolumn=join(range(1, 254), ',') | endif
