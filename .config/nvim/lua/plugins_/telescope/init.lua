--
-- telescope.lua
--

return {
  mappings = {
    ["<leader>f"] = { "git_files", "search through git files" },
    ["<leader>F"] = { "grep_string", "search the string under the cursor" },
    ["<leader>v"] = {
      "find_files",
      "search through vim files",
      {
        file_ignore_patterns = { "undodir/", "spell/" },
        prompt_title = "Vimrc",
        cwd = vim.fn.stdpath("config"),
      },
    },
  },

  map = function(lhs, fn, desc, telescope_opts, mapping_opts)
    require("keymap_").nmap(lhs, function()
      require("plugins_.telescope.pickers")[fn](telescope_opts)
    end, desc, mapping_opts)
  end,

  setup = function(self)
    for key, value in pairs(self.mappings) do
      pcall(self.map, key, unpack(value))
    end
  end,

  config = function()
    require("telescope").setup({
      defaults = {
        layout_config = { prompt_position = "top" },
        sorting_strategy = "ascending",
      },
      pickers = { find_files = { follow = true, hidden = true } },
    })
  end,
}
