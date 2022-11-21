--
-- luasnip.lua
--

return {
  config = function()
    local imap = require("keymap_").imap
    local smap = require("keymap_").smap

    imap(
      "<C-j>",
      function() require("luasnip").jump(1) end,
      { expr = true, remap = true }
    )
    imap("<C-k>", function() require("luasnip").jump(-1) end)

    smap("<C-j>", function() require("luasnip").jump(1) end)
    smap("<C-k>", function() require("luasnip").jump(-1) end)

    require("luasnip.loaders.from_lua").load({
      paths = vim.fn.stdpath("config") .. "/lua/plugin_/snippet/snippets",
    })
  end,
}
