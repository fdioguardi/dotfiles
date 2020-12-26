--
-- lsp.lua
--

local servers = {
    ["python"] = "jedi_language_server",
    ["viml"] = "vimls",
}

local lspconfig = require('lspconfig')
local on_attach = require('completion').on_attach()

for _, server in pairs(servers) do
    lspconfig[server].setup { on_attach=on_attach }
end
