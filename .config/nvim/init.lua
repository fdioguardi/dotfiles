--
-- init.lua
--

-- set leader key
vim.g.mapleader = " "

-- change builtin settings
require("custom.builtin").setup()

-- setup plugins
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({ import = "custom/plugins" }, {
  change_detection = {
    notify = false,
  },
})
