--
-- lsp.lua
--

local lspconfig = require("lspconfig")

local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities.textDocument.completion.completionItem.snippetSupport = true
capabilities.textDocument.completion.completionItem.resolveSupport = {
  properties = {"documentation", "detail", "additionalTextEdits"},
}

for _, server in pairs({"clangd", "pyright", "tsserver"}) do
  lspconfig[server].setup({
    on_attach = require("lsp_.on_attach"),
    capabilities = capabilities,
  })
end

require("lsp_.efm"):setup()
