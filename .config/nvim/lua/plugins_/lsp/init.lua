--
-- lsp.lua
--

return {
  config = function()
    local capabilities = require("cmp_nvim_lsp").update_capabilities(
      vim.lsp.protocol.make_client_capabilities()
    )

    for _, server in ipairs({ "clangd", "pyright" }) do
      require("lspconfig")[server].setup({
        capabilities = capabilities,
        on_attach = require("plugins_.lsp.on_attach"),
      })
    end
  end,
}
