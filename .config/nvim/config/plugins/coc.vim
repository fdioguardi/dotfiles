"
" coc.vim
"

function! s:check_back_space() abort
    let col = col('.') - 1
    return !col || getline('.')[col - 1]  =~# '\s'
endfunction

inoremap <silent><expr> <TAB>
            \ pumvisible() ? "\<C-n>" :
            \ <SID>check_back_space() ? "\<TAB>" :
            \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

" Use <C-space> to trigger completion
inoremap <silent><expr> <C-space> coc#refresh()

"Use <CR> to confirm completion. `<C-g>u` means break undo chain at current position. Coc only does snippet and additional edit on confirm.
inoremap <expr> <CR> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"

" GoTo code navigation.
nmap <leader>gd <Plug>(coc-definition)
nmap <leader>gy <Plug>(coc-type-definition)
nmap <leader>gi <Plug>(coc-implementation)
nmap <leader>gr <Plug>(coc-references)
nmap <F2> <Plug>(coc-rename)
nmap <leader>g[ <Plug>(coc-diagnostic-prev)
nmap <leader>g] <Plug>(coc-diagnostic-next)
nmap <silent> <leader>gp <Plug>(coc-diagnostic-prev)
nmap <silent> <leader>gn <Plug>(coc-diagnostic-next)
nnoremap <leader>cr :CocRestart

let g:coc_global_extensions=[
\   'coc-omnisharp',
\   'coc-json',
\   'coc-highlight',
\   'coc-snippets',
\   'coc-pairs',
\   'coc-prettier',
\   'coc-vimlsp',
\   'coc-vimtex',
\   ]

" vim-prettier
" run prettier on save
command! -nargs=0 Prettier :CocCommand prettier.formatFile
