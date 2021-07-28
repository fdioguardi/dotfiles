--
-- lsp.lua
--

local lspconfig = require("lspconfig")

local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities.textDocument.completion.completionItem.snippetSupport = true
capabilities.textDocument.completion.completionItem.resolveSupport = {
  properties = { "documentation", "detail", "additionalTextEdits" },
}

for _, server in ipairs({ "clangd", "pyright", "tsserver" }) do
  lspconfig[server].setup({
    on_attach = require("plugins_.lsp.on_attach"),
    capabilities = capabilities,
    flags = {
      debounce_text_changes = 500,
    },
  })
end

require("plugins_.lsp.efm"):setup()
