--
-- luasnip.lua
--

return {
  config = function()
    local inoremap = require("mappings_.keymaps").inoremap
    local snoremap = require("mappings_.keymaps").snoremap

    inoremap(
      "<C-k>",
      "luasnip#expand_or_jumpable() ? '<Plug>luasnip-expand-or-jump' : '<Tab>'",
      { expr = true, noremap = false }
    )
    inoremap("<C-j>", "<cmd>lua require('luasnip').jump(-1)<CR>")

    snoremap("<C-k>", "<cmd>lua require('luasnip').jump(1)<CR>")
    snoremap("<C-j>", "<cmd>lua require('luasnip').jump(-1)<CR>")
  end,
}
