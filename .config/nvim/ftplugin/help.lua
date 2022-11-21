--
-- help.lua
--

vim.opt_local.scrolloff = 999
require("keymap_").nmap("q", "ZQ", "close help buffer", { buffer = true })
