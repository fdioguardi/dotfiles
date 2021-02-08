"
" autocmd.vim
"

" delete trailing white spaces on save
autocmd BufWritePre * :call autocmds#trimWhiteSpace()

" Breefly highlight yanked text
autocmd TextYankPost * lua require('vim.highlight').on_yank{ timeout = 300, on_visual = false }
