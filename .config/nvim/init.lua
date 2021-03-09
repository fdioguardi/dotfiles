--
-- init.lua
--

vim.cmd [[ packadd paq-nvim ]]

local paq = require('paq-nvim').paq

  -- Plugin managing
paq { 'savq/paq-nvim', opt = true }        -- plugin manager

  -- Colorschemes
paq { 'gruvbox-community/gruvbox' }        -- gruvbox colorscheme
paq { 'ayu-theme/ayu-vim' }                -- ayu colorscheme

  -- Functionalitiy
paq { 'tpope/vim-surround' }               -- simple quoting/parenthesizing
paq { 'tpope/vim-commentary' }             -- faster commenting
paq { 'norcalli/snippets.nvim' }           -- snippet management
paq { 'nvim-telescope/telescope.nvim' }    -- fuzzy finder
paq { 'nvim-lua/plenary.nvim' }
paq { 'nvim-lua/popup.nvim' }
paq { 'nvim-telescope/telescope-fzy-native.nvim' }

  -- Syntax highlighting
paq { 'nvim-treesitter/nvim-treesitter',   -- parser generator
  run = function()
          vim.api.nvim_command('TSUpdate')
        end }
paq { 'p00f/nvim-ts-rainbow' }             -- colorizes matching parenthesis

  -- Language Server Protocol
paq { 'neovim/nvim-lspconfig' }            -- common configurations
paq { 'nvim-lua/completion-nvim' }         -- completion framework

-- Sourcing
paq { 'tjdevries/astronauta.nvim' }        -- emulate runtimepath in lua
