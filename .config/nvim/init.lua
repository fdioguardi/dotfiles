--
-- init.lua
--

-- change builtin settings
require("plugin_.builtin").setup()

-- setup plugins
require("packer").startup(function(use)
  -- Plugin managing
  use({ "wbthomason/packer.nvim" })

  -- Colorschemes
  use({
    "tanvirtin/monokai.nvim",
    after = "nvim-treesitter",
    config = function() require("plugin_.theme").monokai() end,
  })

  -- Functionality
  use({ "tpope/vim-surround", event = "CursorMoved" })

  use({
    "numToStr/Comment.nvim",
    config = function() require("Comment").setup({ ignore = "^$" }) end,
    keys = { { "n", "gc" }, { "v", "gc" }, { "n", "gb" }, { "v", "gb" } },
  })

  use({ "github/copilot.vim" })

  use({
    "nvim-telescope/telescope.nvim",
    config = function() require("plugin_.telescope"):config() end,
    module = "telescope",
    requires = {
      { "nvim-lua/plenary.nvim", module = "plenary" },
      { "nvim-lua/popup.nvim", module = "popup" },
    },
    setup = function() require("plugin_.telescope"):setup() end,
  })

  -- Syntax highlighting
  use({
    "nvim-treesitter/nvim-treesitter",
    module = "nvim-treesitter",
    run = ":TSUpdate",
  })

  use({
    "p00f/nvim-ts-rainbow",
    event = "UIEnter",
  })

  use({
    "nvim-treesitter/nvim-treesitter-textobjects",
    config = function() require("plugin_.treesitter").config() end,
    after = "nvim-ts-rainbow",
  })

  -- Language Server Protocol
  use({
    "neovim/nvim-lspconfig",
    config = function() require("plugin_.lsp"):config() end,
  })

  use({
    "jose-elias-alvarez/null-ls.nvim",
    config = function() require("plugin_.lsp.null-ls").config() end,
  })

  use({ "ray-x/lsp_signature.nvim", module = "lsp_signature" })

  use({
    "smjonas/inc-rename.nvim",
    config = function() require("inc_rename").setup() end,
  })

  use({
    "hrsh7th/nvim-cmp",
    config = function() require("plugin_.completion"):config() end,
    requires = {
      { "hrsh7th/cmp-buffer", event = "InsertEnter" },
      { "hrsh7th/cmp-nvim-lsp" },
      { "hrsh7th/cmp-path", event = "InsertEnter" },
      { "saadparwaiz1/cmp_luasnip", after = "LuaSnip" },
      {
        "L3MON4D3/LuaSnip",
        config = function() require("plugin_.snippet"):config() end,
        event = "InsertEnter",
      },
    },
  })
end)
