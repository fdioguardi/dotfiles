--
-- init.lua
--

-- change builtin settings
require("plugin_.builtin").setup()

-- stylua: ignore start
-- setup plugins
require("packer").startup(function(use)
    -- Plugin managing
  use { "wbthomason/packer.nvim" }

    -- Colorschemes
  use {
    "tanvirtin/monokai.nvim",
    after = "nvim-treesitter",
    config = function() require("plugin_.theme").monokai() end,
  }

    -- Functionality
  use { "tpope/vim-surround", event = "CursorMoved" }  -- surround text objects

  use {
    "numToStr/Comment.nvim",                             -- (un)comment motions
    config = function() require('Comment').setup({ ignore = "^$" }) end,
    keys = { { "n", "gc" }, { "v", "gc" }, { "n", "gb" }, { "v", "gb" }  },
  }

  use {
    "nvim-telescope/telescope.nvim",                            -- fuzzy finder
    config = function() require("plugin_.telescope"):config() end,
    module = 'telescope',
    requires = {
      { "nvim-lua/plenary.nvim", module = "plenary" },
      { "nvim-lua/popup.nvim", module = "popup" }
    },
    setup = function() require("plugin_.telescope"):setup() end,
  }

    -- Syntax highlighting
  use {
    "nvim-treesitter/nvim-treesitter",                      -- parser generator
    module = "nvim-treesitter",
    run = ":TSUpdate",
  }

  use {
    "p00f/nvim-ts-rainbow",                    -- colorize matching parenthesis
    event = "UIEnter",
  }

  use {
    "nvim-treesitter/nvim-treesitter-textobjects",              -- text objects
    config = function() require("plugin_.treesitter").config() end,
    after = "nvim-ts-rainbow"
  }

    -- Language Server Protocol
  use {
    "neovim/nvim-lspconfig",                           -- common configurations
    config = function() require("plugin_.lsp"):config() end,
  }

  use {
    "jose-elias-alvarez/null-ls.nvim",               -- generic language server
    config = function() require("plugin_.lsp.null-ls").config() end
  }


  use { "ray-x/lsp_signature.nvim", module = "lsp_signature" }-- signature help

  use {                                                   -- incremental rename
    "smjonas/inc-rename.nvim",
    config = function() require("inc_rename").setup() end
  }

  use {
    "hrsh7th/nvim-cmp",                                 -- completion framework
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
  }

end)
-- stylua: ignore end
