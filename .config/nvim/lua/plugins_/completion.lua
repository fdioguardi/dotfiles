--
-- completion.lua
--

local buf_inoremap = require("mappings_.keymaps").buf_inoremap

buf_inoremap(0, "<C-Space>", "compe#complete('<C-Space>')", { expr = true })
buf_inoremap(0, "<C-y>", "compe#confirm('<C-y>')", { expr = true })

vim.opt.completeopt = { "menuone", "noselect" }

require("compe").setup({
  source = { path = true, buffer = true, nvim_lsp = true, nvim_lua = true },
}, 0)
