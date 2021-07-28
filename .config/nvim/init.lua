--
-- init.lua
--

-- set leader key
vim.api.nvim_set_keymap("", " ", "", {})
vim.g.mapleader = " "

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
    config = function() require("plugins_.theme").monokai() end,
    after = "nvim-treesitter",
  }

    -- Functionality
  use { "tpope/vim-surround", event = "VimEnter" }     -- surround text objects

  use {
    "tpope/vim-commentary",                              -- comment out motions
    keys = { { "n", "gc" }, { "v", "gc" } },
  }

  use {
    "nvim-telescope/telescope.nvim",                            -- fuzzy finder
    config = function() require("plugins_.telescope"):setup() end,
    event = "UIEnter",
    requires = { "nvim-lua/plenary.nvim", "nvim-lua/popup.nvim" },
  }

    -- Syntax highlighting
  use {
    "nvim-treesitter/nvim-treesitter",                      -- parser generator
    run = ":TSUpdate",
    module = "nvim-treesitter",
  }

  use {
    "p00f/nvim-ts-rainbow",
    config = function() require("plugins_.treesitter") end,
    event = "BufRead",
    requires = { "nvim-treesitter/nvim-treesitter" },
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
