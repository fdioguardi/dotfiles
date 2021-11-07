--
-- treesitter.lua
--

return {
  config = function()
    require("nvim-treesitter.configs").setup({
      highlight = { enable = true, use_languagetree = true },
      indent = { enable = true },
      rainbow = { enable = true },
    })
  end,
}
