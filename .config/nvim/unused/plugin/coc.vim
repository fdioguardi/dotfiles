"
" coc.vim
"

let s:languages = [
\   'coc-json',
\   'coc-vimlsp',
\   'coc-python',
\   'coc-sh',
\   ]

let s:utils = [
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
nmap gR <Plug>(coc-refactor)

" coc-diagnostic
" Use `[g` and `]g` to navigate diagnostics
" Use `:CocDiagnostics` to get all diagnostics of current buffer in location list.
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)

" Map function and class text objects
xmap if <Plug>(coc-funcobj-i)
omap if <Plug>(coc-funcobj-i)
xmap af <Plug>(coc-funcobj-a)
omap af <Plug>(coc-funcobj-a)
xmap ic <Plug>(coc-classobj-i)
omap ic <Plug>(coc-classobj-i)
xmap ac <Plug>(coc-classobj-a)
omap ac <Plug>(coc-classobj-a)

" coc-snippets
let g:coc_snippet_next = '<tab>'

let g:coc_snippet_prev = '<s-tab>'

" coc-highlihght
" Highlight the symbol and its references when holding the cursor.
autocmd CursorHold * silent call CocActionAsync('highlight')
