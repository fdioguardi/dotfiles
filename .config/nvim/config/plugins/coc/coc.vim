"
" coc.vim
"

let s:languages = [
\   'coc-json',
\   'coc-omnisharp',
\   'coc-vimlsp',
\   'coc-sh',
\   ]

let s:utils = [
\   'coc-explorer',
\   'coc-highlight',
\   'coc-snippets',
\   'coc-pairs',
\   'coc-prettier',
\   'coc-diagnostic',
\   ]

let g:coc_global_extensions = s:languages + s:utils

" Use tab for trigger completion with characters ahead and navigate.

" Use <C-space> to trigger completion
inoremap <silent><expr> <C-space> coc#refresh()

" Use <Tab> and <S-Tab> to navigate the completion list
inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"

" Use <CR> to confirm completion and format code.
inoremap <silent><expr> <cr> pumvisible() ? coc#_select_confirm() : "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"


" Close preview window when completion is done.
autocmd! CompleteDone * if pumvisible() == 0 | pclose | endif

" GoTo code navigation.
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)


" vim-prettier
source $HOME/.config/nvim/config/plugins/coc/vim-prettier.vim

" coc-explorer
source $HOME/.config/nvim/config/plugins/coc/coc-explorer.vim


let g:coc_snippet_next = '<tab>'

let g:coc_snippet_prev = '<s-tab>'
