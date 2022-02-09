--
-- mappings.lua
--

return {
  setup = function(_, bufnr)
    local function nmap(lhs, rhs, desc)
      require("keymap_").nmap(lhs, rhs, desc, { buffer = bufnr })
    end

    nmap("<leader>lca", vim.lsp.buf.code_action, "LSP code actions")
    nmap("<leader>lr", vim.lsp.buf.rename, "LSP rename symbol")
    nmap("K", vim.lsp.buf.hover, "LSP display hover information")
    nmap("gd", vim.lsp.buf.definition, "LSP go to definition")
    nmap("gi", vim.lsp.buf.implementation, "LSP list implementations")
    nmap("gr", vim.lsp.buf.references, "LSP go to references")

    nmap("[d", vim.diagnostic.goto_prev, "LSP go to previous diagnostic")
    nmap("]d", vim.diagnostic.goto_next, "LSP go to next diagnostic")

    require("plugins_.telescope").map(
      "<leader>e",
      "lsp_document_diagnostics",
      "LSP show diagnostics",
      { previewer = false, initial_mode = "normal" },
      { buffer = bufnr }
    )
  end,
}
