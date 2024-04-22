--
-- on_attach.lua
--

return function(client, bufnr)
  -- set up mappings
  require("fdioguardi.lsp").util.map(client, bufnr)

  -- enable sign column
  vim.opt_local.signcolumn = "yes:1"

  -- enable signature help when possible
  if client.server_capabilities.signature_help then
    require("lsp_signature").on_attach({ hint_enable = false })
  end

  -- configure handler
  vim.diagnostic.config({ update_in_insert = true })
end
