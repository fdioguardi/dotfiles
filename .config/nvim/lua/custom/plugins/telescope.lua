return {
  "nvim-telescope/telescope.nvim",
  dependencies = { { "nvim-lua/plenary.nvim", module = "plenary" } },
  config = function()
    require("custom.telescope"):setup()
  end,
}
