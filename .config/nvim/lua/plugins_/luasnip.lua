--
-- luasnip.lua
--

return {
  config = function()
    local imap = require("keymap_").imap
    local smap = require("keymap_").smap

    imap(
      "<C-k>",
      "luasnip#expand_or_jumpable() ? '<Plug>luasnip-expand-or-jump' : '<Tab>'",
      { expr = true, remap = true }
    )
    imap("<C-j>", function()
      require("luasnip").jump(-1)
    end)

    smap("<C-k>", function()
      require("luasnip").jump(1)
    end)
    smap("<C-j>", function()
      require("luasnip").jump(-1)
    end)
  end,
}
