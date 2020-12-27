"
" treesitter.vim
"

lua require('treesitter')

" syntax based code folding
set foldmethod=expr   " lines with equal indent form a fold.
set foldexpr=nvim_treesitter#foldexpr()
