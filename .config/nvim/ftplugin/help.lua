--
-- help.lua
--

local buf_nnoremap = require("mappings_.keymaps").buf_nnoremap

buf_nnoremap(0, "j", "Lj")
buf_nnoremap(0, "k", "Hk")
buf_nnoremap(0, "q", "ZQ")
