--
-- lua.lua
--

vim.opt_local.textwidth = 80
vim.opt_local.colorcolumn = "80"
vim.opt_local.wrap = false
vim.opt_local.expandtab = true
vim.opt_local.shiftwidth = 2

require("completion_")({source = {nvim_lua = true}})

if vim.fn.executable("lua-format") == 1 then
  vim.opt_local.formatprg =
    "lua-format -i --column-limit=80 --indent-width=2 " ..
      "--continuation-indent-width=2 --extra-sep-at-table-end " ..
      "--single-quote-to-double-quote --break-before-functiondef-rp --"
end
