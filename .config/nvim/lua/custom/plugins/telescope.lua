return {
  "nvim-telescope/telescope.nvim",
  dependencies = { "nvim-lua/plenary.nvim" },
  config = function()
    local telescope = require("custom.telescope")
    telescope.config()
    telescope:setup()
  end,
}
