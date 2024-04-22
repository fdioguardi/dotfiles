--
-- init.lua
--

local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
vim.opt.rtp:prepend(lazypath)

-- set leader key
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- change builtin settings
require("fdioguardi.builtin").setup()

-- setup plugins
require("lazy").setup("plugins")
