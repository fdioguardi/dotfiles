--
-- completion.lua
--

local inoremap = require("mappings_.keymaps").inoremap

inoremap("<C-Space>", "compe#complete('<C-Space>')", { expr = true })
inoremap("<C-y>", "compe#confirm('<C-y>')", { expr = true })

vim.opt.completeopt = { "menuone", "noselect" }

require("compe").setup({
  source = { path = true, buffer = true, nvim_lsp = true, nvim_lua = true },
}, 0)
