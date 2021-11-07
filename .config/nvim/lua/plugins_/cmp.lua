--
-- cmp.lua
--

local cmp = require("cmp")

return {
  formatting = {
    format = function(entry, vim_item)
      vim_item.menu = ({
        buffer = "[B]",
        path = "[P]",
        nvim_lsp = "[L]",
        nvim_lua = "[V]",
        luasnip = "[S]",
      })[entry.source.name]
      return vim_item
    end,
  },

  mapping = {
    ["<C-Space>"] = cmp.mapping.complete(),
    ["<C-y>"] = cmp.mapping.confirm({
      behavior = cmp.ConfirmBehavior.Replace,
      select = true,
    }),
  },

  snippet = {
    expand = function(args)
      require("luasnip").lsp_expand(args.body)
    end,
  },

  sources = { { name = "buffer", keyword_length = 5 }, { name = "path" } },
}
