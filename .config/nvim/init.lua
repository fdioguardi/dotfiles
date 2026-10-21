--
-- init.lua
--

-- set leader keys
vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

-- change builtin settings
require("custom.builtin").setup()

-- setup plugins
require("custom.bootstrap")

require("lazy").setup({ import = "custom/plugins" }, {
  change_detection = {
    notify = false,
  },
})
