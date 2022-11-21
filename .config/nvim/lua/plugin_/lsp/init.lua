--
-- lsp.lua
--

return {
  config = function(self)
    local capabilities = require("cmp_nvim_lsp").default_capabilities()

    for _, server in ipairs({ "clangd", "pyright" }) do
      require("lspconfig")[server].setup({
        capabilities = capabilities,
        on_attach = self.on_attach,
      })
    end

    require("plugin_.lsp.sumneko").setup(capabilities, self.on_attach)
  end,

  on_attach = function(client, bufnr)
    require("plugin_.lsp.on_attach")(client, bufnr)

    -- enable completion source
    require("plugin_.completion"):buf_setup({ { name = "nvim_lsp" } })

    -- disable server's document_formatting
    client.server_capabilities.document_formatting = false
  end,
}
