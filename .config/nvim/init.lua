--
-- init.lua
--

-- set leader key
vim.api.nvim_set_keymap("", " ", "", {})
vim.g.mapleader = " "

-- disable distribution plugin
require("disabled_")

-- set colorscheme
require("colorschemes_").ayu()

vim.cmd("packadd! paq-nvim")
if not pcall(require, "paq") then return end

require("paq")({
  -- Plugin managing
  {"savq/paq-nvim", opt = true},

  -- Colorschemes
  "ayu-theme/ayu-vim",

  -- Functionality
  "tpope/vim-surround",                        -- simple quoting/parenthesizing
  "tpope/vim-commentary",                      -- comment out motions
  "nvim-telescope/telescope.nvim",             -- fuzzy finder
  "nvim-lua/plenary.nvim",
  "nvim-lua/popup.nvim",

  -- Syntax highlighting
  {"nvim-treesitter/nvim-treesitter",          -- parser generator
    run = function() vim.cmd("TSUpdate") end},
  "p00f/nvim-ts-rainbow",                      -- colorize matching parenthesis

  -- Language Server Protocol
  "neovim/nvim-lspconfig",                     -- common configurations
  "hrsh7th/nvim-compe",                        -- completion framework
  "ray-x/lsp_signature.nvim",                  -- signature help
  "mfussenegger/nvim-jdtls",                   -- java support
})
