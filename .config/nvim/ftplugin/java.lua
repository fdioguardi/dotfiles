--
-- java.lua
--

vim.opt_local.expandtab = true

local buf_nnoremap = require("mappings_.keymaps").buf_nnoremap
local buf_vnoremap = require("mappings_.keymaps").buf_vnoremap
buf_nnoremap(0, "<leader>jc", ":lua require('jdtls').code_action()<CR>")
buf_nnoremap(0, "<leader>jr",
             ":lua require('jdtls').code_action(false, 'refactor')<CR>")

-- attach jdtls
require("jdtls").start_or_attach({
  cmd = {"launch_jdtls"},
  on_attach = require("lsp_.on_attach"),
})
