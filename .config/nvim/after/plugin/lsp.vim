" don’t autoinsert nor open any other menu
set completeopt=menuone,noinsert,noselect

" completion strategy
let g:completion_matching_strategy_list = ['exact', 'substring', 'fuzzy']

" ignore case matching
let g:completion_matching_ignore_case = 1

"" enable lsp servers
" python
lua require'nvim_lsp'.jedi_language_server.setup{
	\	on_attach=require'completion'.on_attach
\	}

" viml
lua require'nvim_lsp'.vimls.setup{ on_attach=require'completion'.on_attach }

" normal-mode mappings for jump to definition and the like
nnoremap <leader>gd :lua vim.lsp.buf.definition()<CR>
nnoremap <leader>gi :lua vim.lsp.buf.implementation()<CR>
nnoremap <leader>gsh :lua vim.lsp.buf.signature_help()<CR>
nnoremap <leader>grf :lua vim.lsp.buf.references()<CR>
nnoremap <leader>grn :lua vim.lsp.buf.rename()<CR>
nnoremap K :lua vim.lsp.buf.hover()<CR>
nnoremap <leader>gca :lua vim.lsp.buf.code_action()<CR>

" use <Tab> and <S-Tab> to navigate through popup menu
inoremap <expr> <Tab>   pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"

" map <c-p> to manually trigger completion
imap <silent> <C-Space> <Plug>(completion_trigger)
