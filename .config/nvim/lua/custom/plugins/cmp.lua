return {
  "hrsh7th/nvim-cmp",

  dependencies = {
    "hrsh7th/cmp-buffer",
    "hrsh7th/cmp-path",
    "hrsh7th/cmp-nvim-lsp",
    "hrsh7th/cmp-nvim-lua",
    "tamago324/cmp-zsh",
  },

  opts = function()
    return {
      formatting = {
        format = function(entry, vim_item)
          vim_item.menu = ({
            buffer = "[B]",
            lazydev = "[V]",
            nvim_lsp = "[L]",
            nvim_lua = "[V]",
            path = "[P]",
          })[entry.source.name]
          return vim_item
        end,
      },

      mapping = require("cmp").mapping.preset.insert({
        ["<C-Space>"] = require("cmp").mapping.complete(),
        ["<C-y>"] = require("cmp").mapping.confirm({
          behavior = require("cmp").ConfirmBehavior.Replace,
          select = true,
        }),
      }),

      sources = {
        { name = "buffer", keyword_length = 5 },
        { name = "lazydev" },
        { name = "nvim_lsp" },
        { name = "nvim_lua" },
        { name = "path" },
      },
    }
  end,
}
