--
-- on_attach.lua
--

return function(client, bufnr)
  -- set up mappings
  for lhs, fn in pairs({
    ["<leader>lca"] = "code_action",
    ["<leader>lr"] = "rename",
    ["K"] = "hover",
    ["gd"] = "definition",
    ["gi"] = "implementation",
    ["gr"] = "references",
  }) do
    require("mappings_.keymaps").buf_nnoremap(
      bufnr,
      lhs,
      string.format(":lua vim.lsp.buf.%s()<CR>", fn)
    )
  end

  for lhs, fn in pairs({ ["[d"] = "goto_prev", ["]d"] = "goto_next" }) do
    require("mappings_.keymaps").buf_nnoremap(
      bufnr,
      lhs,
      string.format(":lua vim.diagnostic.%s()<CR>", fn)
    )
  end

  require("plugins_.telescope").map("<leader>e", "lsp_document_diagnostics", {
    previewer = false,
    initial_mode = "normal",
  }, bufnr)

  -- enable completion source
  require("cmp").setup.buffer({
    sources = {
      { name = "nvim_lsp" },
      { name = "luasnip" },
      unpack(require("plugins_.cmp").sources),
    },
  })

  -- enable sign column
  vim.opt_local.signcolumn = "yes:1"

  -- enable signature help when possible
  if client.resolved_capabilities.signature_help then
    require("lsp_signature").on_attach({ hint_enable = false })
  end

  -- disable server's document_formatting
  client.resolved_capabilities.document_formatting = false

  -- configure handler
  vim.lsp.handlers["textDocument/publishDiagnostics"] = vim.lsp.with(
    vim.lsp.diagnostic.on_publish_diagnostics,
    { underline = true, update_in_insert = true }
  )
end
