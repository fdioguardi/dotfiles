return {

  -- Functionality
  { "tpope/vim-surround" },

  {
    "numToStr/Comment.nvim",
    config = function() require("Comment").setup({ ignore = "^$" }) end,
  },

  "github/copilot.vim",
}
