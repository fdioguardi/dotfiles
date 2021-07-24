--
-- jdtls.lua
--

-- attach jdtls
require("jdtls").start_or_attach({
  cmd = {"launch_jdtls"},
  on_attach = function()
    require("plugins_lsp.on_attach")()

    local buf_nnoremap = require("mappings_.keymaps").buf_nnoremap
    local buf_vnoremap = require("mappings_.keymaps").buf_vnoremap
    buf_nnoremap(0, "<leader>lca", ":lua require('jdtls').code_action()<CR>")
    buf_nnoremap(0, "<leader>lcr",
                 ":lua require('jdtls').code_action(false, 'refactor')<CR>")
  end,
})
