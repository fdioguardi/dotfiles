--
-- lsp_.lua
--

local lspconfig = require('lspconfig')

local function map_lsp()
  local U = require('utils_')

  U.map('i', '<Tab>',   'pumvisible() ? "\\<C-n>" : "\\<Tab>"', {
    expr = true })
  U.map('i', '<S-Tab>', 'pumvisible() ? "\\<C-p>" : "\\<S-Tab>"', {
    expr = true })

  U.map('i', '<C-Space>', '<Plug>(completion_trigger)', { noremap = false })

  local mappings = {
    ['gd'] = 'definition',
    ['K'] = 'hover',
    ['<leader>grr'] = 'rename',
  }

  for lhs, func in pairs(mappings) do
    U.nnoremap(lhs, string.format(":lua vim.lsp.buf['%s']()<CR>", func))
  end
end


local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities.textDocument.completion.completionItem.snippetSupport = true;

local servers = {
  ["latex"] = "texlab",
  ["python"] = "jedi_language_server",
}

for _, server in pairs(servers) do
  lspconfig[server].setup({
    on_attach = function()
                  require('completion_')({ source = {
                    nvim_lsp = true,
                    snippets_nvim = true,
                  }})
                  vim.wo.signcolumn = 'yes'
                  map_lsp()
                end,
    capabilities = capabilities,
  })
end
