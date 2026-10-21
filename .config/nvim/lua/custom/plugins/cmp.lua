return {
  "hrsh7th/nvim-cmp",

  event = "InsertEnter",

  dependencies = {
    "hrsh7th/cmp-buffer",
    "hrsh7th/cmp-path",
    "hrsh7th/cmp-nvim-lsp",
    { "tamago324/cmp-zsh", opts = { filetypes = { "sh", "zsh" } } },
  },

  opts = function()
    return {
      formatting = {
        format = function(entry, vim_item)
          vim_item.menu = ({
            buffer = "[B]",
            lazydev = "[V]",
            nvim_lsp = "[L]",
            path = "[P]",
            zsh = "[Z]",
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
        { name = "lazydev", group_index = 0 },
        { name = "buffer", keyword_length = 5 },
        { name = "nvim_lsp" },
        { name = "path" },
        { name = "zsh" },
      },
    }
  end,
}
