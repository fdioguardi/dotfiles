--
-- python.lua
--

vim.opt_local.colorcolumn = "79"
vim.opt_local.textwidth = 79
vim.opt_local.wrap = false

-- execute code
require("mappings_.keymaps").buf_nnoremap(
  0,
  "<leader>r",
  ":w<CR>:vs term://clear; python %<CR>"
)
