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
    "ayu-theme/ayu-vim",
    event = "UIEnter",
    config = function() require("plugins_.theme").ayu() end,
  }

  -- Functionality
  use { "tpope/vim-surround", event = "VimEnter" }      -- surround text objects

  use {
    "tpope/vim-commentary",                               -- comment out motions
    keys = { { "n", "gc" }, { "v", "gc" }, },
  }

  use {
    "nvim-telescope/telescope.nvim",                             -- fuzzy finder
    config = function() require("plugins_.telescope"):setup() end,
    event = "UIEnter",
    requires = { "nvim-lua/plenary.nvim", "nvim-lua/popup.nvim" },
  }

  -- Syntax highlighting
  use {
    "nvim-treesitter/nvim-treesitter",                       -- parser generator
    config = function() require('plugins_.treesitter') end,
    event = "BufRead",
    run = ":TSUpdate"
  }

  -- Language Server Protocol
  use {
    "neovim/nvim-lspconfig",                            -- common configurations
    config = function() require("plugins_.lsp") end,
  }

  use {
    "hrsh7th/nvim-compe",                                -- completion framework
    config = function() require("plugins_.completion") end,
    event = "InsertEnter",
  }

  use { "ray-x/lsp_signature.nvim", module = "lsp_signature" } -- signature help

  use {
    "mfussenegger/nvim-jdtls",                                   -- java support
    config = function() require("plugins_.lsp.jdtls") end,
    ft = "java",
    requires = "nvim-lspconfig",
  }
end)
-- stylua: ignore end
