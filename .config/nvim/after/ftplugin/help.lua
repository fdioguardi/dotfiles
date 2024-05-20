--
-- help.lua
--

vim.opt_local.scrolloff = 999
require("custom.keymaps").nmap("q", "ZQ", "close help buffer", { buffer = true })
