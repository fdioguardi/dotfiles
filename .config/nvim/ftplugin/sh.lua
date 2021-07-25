--
-- sh.lua
--

vim.opt_local.colorcolumn = "80"
vim.opt_local.expandtab = true
vim.opt_local.shiftwidth = 2
vim.opt_local.textwidth = 80
vim.opt_local.wrap = false

require("mappings_.keymaps").buf_nnoremap(
  0,
  "<leader>r",
  ":w<CR>:vs term://clear; bash %<CR>"
)
