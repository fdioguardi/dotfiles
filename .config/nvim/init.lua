--
-- init.lua
--

vim.cmd('packadd paq-nvim')

local paq = require('paq-nvim').paq

-- Plugin managing
paq {'savq/paq-nvim', opt = true}

  -- Colorschemes
paq { 'gruvbox-community/gruvbox' }        -- gruvbox colorscheme
paq { 'ayu-theme/ayu-vim' }                -- ayu colorscheme

-- Functionality
paq {'tpope/vim-surround'}                  -- simple quoting/parenthesizing
paq {'tpope/vim-commentary'}                -- comment out motions
paq {'norcalli/snippets.nvim'}              -- snippet management
paq {'nvim-telescope/telescope.nvim'}       -- fuzzy finder
paq {'nvim-lua/plenary.nvim'}
paq {'nvim-lua/popup.nvim'}
paq {'nvim-telescope/telescope-fzy-native.nvim'}

-- Syntax highlighting
paq { 'nvim-treesitter/nvim-treesitter',    -- parser generator
  run = function()
          vim.cmd('TSUpdate')
        end
}
paq {'p00f/nvim-ts-rainbow'}                -- colorize matching parenthesis

-- Language Server Protocol
paq {'neovim/nvim-lspconfig'}               -- common configurations
paq {'hrsh7th/nvim-compe'}                  -- completion framework

-- Sourcing
paq {'tjdevries/astronauta.nvim'}           -- emulate runtimepath in lua
