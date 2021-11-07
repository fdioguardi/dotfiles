--
-- init.lua
--

-- disable builtin plugins
require("plugins_.builtin").setup()

-- stylua: ignore start
-- setup plugins
if true then return end

require("packer").startup(function(use)
    -- Plugin managing
  use { "wbthomason/packer.nvim" }

    -- Colorschemes
  use {
    "tanvirtin/monokai.nvim",
    after = "nvim-treesitter",
    config = function() require("plugins_.theme").monokai() end,
  }

    -- Functionality
  use { "tpope/vim-surround", event = "CursorMoved" }  -- surround text objects

  use {
    "tpope/vim-commentary",                              -- comment out motions
    keys = { { "n", "gc" }, { "v", "gc" } },
  }

  use {
    "nvim-telescope/telescope.nvim",                            -- fuzzy finder
    config = function() require("plugins_.telescope"):config() end,
    module = 'telescope',
    requires = {
      { "nvim-lua/plenary.nvim", module = "plenary" },
      { "nvim-lua/popup.nvim", module = "popup" }
    },
    setup = function() require("plugins_.telescope"):setup() end,
  }

    -- Syntax highlighting
  use {
    "nvim-treesitter/nvim-treesitter",                      -- parser generator
    module = "nvim-treesitter",
    run = ":TSUpdate",
  }

  use {
    "p00f/nvim-ts-rainbow",                    -- colorize matching parenthesis
    config = function() require("plugins_.treesitter").config() end,
    event = "BufEnter",
    requires = "nvim-treesitter/nvim-treesitter",
  }

    -- Language Server Protocol
  use {
    "jose-elias-alvarez/null-ls.nvim",               -- generic language server
    config = function()
      require("plugins_.lsp.null-ls").config()
    end,
    requires = {
      { "nvim-lua/plenary.nvim", module = "plenary" },
      {
        "neovim/nvim-lspconfig",                       -- common configurations
        config = function() require("plugins_.lsp").config() end,
      },
    },
  }


  use { "ray-x/lsp_signature.nvim", module = "lsp_signature" }-- signature help

  use {
    "hrsh7th/nvim-cmp",                                 -- completion framework
    config = function() require("cmp").setup(require("plugins_.cmp")) end,
    requires = {
      { "hrsh7th/cmp-buffer", event = "InsertEnter" },
      "hrsh7th/cmp-nvim-lsp",
      { "hrsh7th/cmp-nvim-lua", ft = "lua" },
      { "hrsh7th/cmp-path", event = "InsertEnter" },
      { "saadparwaiz1/cmp_luasnip", after = "LuaSnip" },
      {
        "L3MON4D3/LuaSnip",
        config = function() require("plugins_.luasnip").config() end,
        module = "luasnip",
      },
    },
  }

end)
-- stylua: ignore end
