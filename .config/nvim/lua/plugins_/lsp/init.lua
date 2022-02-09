--
-- lsp.lua
--

return {
  config = function(self)
    local capabilities = require("cmp_nvim_lsp").update_capabilities(
      vim.lsp.protocol.make_client_capabilities()
    )

    for _, server in ipairs({ "clangd", "pyright" }) do
      require("lspconfig")[server].setup({
        capabilities = capabilities,
        on_attach = self.on_attach,
      })
    end

    require("plugins_.lsp.sumneko").setup(capabilities, self.on_attach)
  end,

  on_attach = function(client, bufnr)
    require("plugins_.lsp.on_attach")(client, bufnr)

    -- enable completion source
    require("plugins_.cmp"):buf_setup({
      { name = "nvim_lsp" },
      { name = "luasnip" },
    })

    -- disable server's document_formatting
    client.resolved_capabilities.document_formatting = false
  end,
}
