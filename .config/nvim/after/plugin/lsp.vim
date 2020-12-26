"
" lsp.vim
"

" enable servers
lua require('lsp')

" don’t autoinsert nor open any other menu
set completeopt=menuone,noinsert,noselect

" completion strategy
let g:completion_matching_strategy_list = ['exact', 'substring', 'fuzzy']

" ignore case matching
let g:completion_matching_ignore_case = 1

" normal-mode mappings for jump to definition and the like
nnoremap <silent> gd 			<cmd>lua vim.lsp.buf.definition()<CR>
nnoremap <silent> K 			<cmd>lua vim.lsp.buf.hover()<CR>
nnoremap <silent> gD 			<cmd>lua vim.lsp.buf.declaration()<CR>
nnoremap <silent> gi 			<cmd>lua vim.lsp.buf.implementation()<CR>
nnoremap <silent> <c-k> 		<cmd>lua vim.lsp.buf.signature_help()<CR>
nnoremap <silent> <leader>grf	<cmd>lua vim.lsp.buf.references()<CR>
nnoremap <silent> <leader>grn	<cmd>lua vim.lsp.buf.rename()<CR>
nnoremap <silent> ga			<cmd>lua vim.lsp.buf.code_action()<CR>

" use <Tab> and <S-Tab> to navigate through popup menu
inoremap <expr> <Tab>   pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"

" map <c-p> to manually trigger completion
imap <silent> <C-Space> <Plug>(completion_trigger)
