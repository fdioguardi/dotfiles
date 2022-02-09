--
-- on_attach.lua
--

return function(client, bufnr)
  -- set up mappings
  require("plugins_.lsp.mappings").setup(client, bufnr)

  -- enable sign column
  vim.opt_local.signcolumn = "yes:1"

  -- enable signature help when possible
  if client.resolved_capabilities.signature_help then
    require("lsp_signature").on_attach({ hint_enable = false })
  end

  -- configure handler
  vim.diagnostic.config({ update_in_insert = true })
end
