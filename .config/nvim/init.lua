--
-- init.lua
--

-- set leader key
vim.api.nvim_set_keymap("", " ", "", {})
vim.g.mapleader = " "

require("paq")({
  -- Plugin managing
  "savq/paq-nvim",

  -- Colorschemes
  "ayu-theme/ayu-vim",

  -- Functionality
  "tpope/vim-surround",                        -- simple quoting/parenthesizing
  "tpope/vim-commentary",                      -- comment out motions
  "nvim-telescope/telescope.nvim",             -- fuzzy finder
  "nvim-lua/plenary.nvim",
  "nvim-lua/popup.nvim",                       -- syntax highlighting
  {"nvim-treesitter/nvim-treesitter",          -- parser generator
    run = function() vim.cmd("TSUpdate") end},
  "p00f/nvim-ts-rainbow",                      -- colorize matching parenthesis

  -- Language Server Protocol
  "neovim/nvim-lspconfig",                     -- common configurations
  "hrsh7th/nvim-compe",                        -- completion framework
  "ray-x/lsp_signature.nvim",                  -- signature help
  "mfussenegger/nvim-jdtls",                   -- full java support
})
