--
-- mappings.lua
--

return {
  setup = function(_, bufnr)
    local function nmap(lhs, rhs, desc)
      require("fdioguardi.keymaps").nmap(lhs, rhs, desc, { buffer = bufnr })
    end
    local function vmap(lhs, rhs, desc)
      require("fdioguardi.keymaps").vmap(lhs, rhs, desc, { buffer = bufnr })
    end

    vmap("<leader>lca", vim.lsp.buf.code_action, "LSP code actions in a range")
    nmap("<leader>lca", vim.lsp.buf.code_action, "LSP code actions")
    nmap("<leader>lr", ":IncRename ", "LSP rename symbol")
    nmap("K", vim.lsp.buf.hover, "LSP display hover information")
    nmap("gd", vim.lsp.buf.definition, "LSP go to definition")
    nmap("gi", vim.lsp.buf.implementation, "LSP list implementations")
    nmap("gr", vim.lsp.buf.references, "LSP go to references")

    nmap("[d", vim.diagnostic.goto_prev, "LSP go to previous diagnostic")
    nmap("]d", vim.diagnostic.goto_next, "LSP go to next diagnostic")

    require("fdioguardi.telescope").map(
      "<leader>e",
      "lsp_document_diagnostics",
      "LSP show diagnostics",
      { previewer = false, initial_mode = "normal" },
      { buffer = bufnr }
    )
  end,
}
