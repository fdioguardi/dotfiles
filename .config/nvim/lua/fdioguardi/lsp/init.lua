local M = {}

M.settings = {}
M.util = {}
M.server = {}

-- Settings settings

M.settings.on_attach = function(client, bufnr)
  require("fdioguardi.lsp.on_attach")(client, bufnr)

  -- disable server's document_formatting
  client.server_capabilities.document_formatting = false
end

-- Utilities

M.util.map = require("fdioguardi.lsp.mappings").setup

-- Server configurations
M.server.lua_ls = require("fdioguardi.lsp.lua_ls")

return M
