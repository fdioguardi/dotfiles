--
-- init.lua
--

-- set leader key
vim.g.mapleader = " "

-- change builtin settings
require("custom.builtin").setup()

-- setup plugins
require("custom.bootstrap")

require("lazy").setup({ import = "custom/plugins" }, {
  change_detection = {
    notify = false,
  },
})
