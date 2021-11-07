--
-- lua.lua
--

vim.opt_local.colorcolumn = "80"
vim.opt_local.expandtab = true
vim.opt_local.shiftwidth = 2
vim.opt_local.textwidth = 80
vim.opt_local.wrap = false

-- enable completion source
require("cmp").setup.buffer({
  sources = { { name = "nvim_lua" }, unpack(require("plugins_.cmp").sources) },
})
