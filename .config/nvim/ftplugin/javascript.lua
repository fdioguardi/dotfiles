--
-- javascript.lua
--

vim.opt_local.textwidth = 80
vim.opt_local.colorcolumn = "80"
vim.opt_local.shiftwidth = 4
vim.opt_local.wrap = false
vim.opt_local.expandtab = true

require("mappings_.keymaps").buf_nnoremap(0, "<leader>r",
                                      ":w<CR>:vs term://clear; ts-node %<CR>")
