--
-- init.lua
--

-- disable builtin plugins
require("plugins_.builtin")

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
    module = 'plugins_.telescope.pickers',
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
    config = function() require("plugins_.treesitter") end,
    event = "CursorMoved",
    requires = "nvim-treesitter/nvim-treesitter",
  }

    -- Language Server Protocol
  use {
    "neovim/nvim-lspconfig",                           -- common configurations
    config = function() require("plugins_.lsp") end,
  }

  use { "ray-x/lsp_signature.nvim", module = "lsp_signature" }-- signature help

  use {
    "hrsh7th/nvim-compe",                               -- completion framework
    config = function() require("plugins_.completion") end,
    event = "InsertEnter",
  }

  use {
    "mfussenegger/nvim-jdtls",                                  -- java support
    config = function() require("plugins_.lsp.jdtls") end,
    ft = "java",
  }
end)
-- stylua: ignore end
