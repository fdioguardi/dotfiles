--
-- telescope.lua
--

return {
  map = function(lhs, fn, opts, bufnr)
    local rhs = string.format(
      ":lua require('plugins_.telescope.pickers').%s(%s)<CR>",
      fn,
      vim.inspect(opts or {}):gsub("\n", "")
    )

    if bufnr then
      require("mappings_.keymaps").buf_nnoremap(bufnr, lhs, rhs)
    else
      require("mappings_.keymaps").nnoremap(lhs, rhs)
    end
  end,

  mappings = {
    ["<leader>f"] = "git_files",
    ["<leader>F"] = "grep_string",
    ["<leader>v"] = {
      "find_files",
      {
        file_ignore_patterns = { "undodir/", "spell/" },
        prompt_title = "Vimrc",
        cwd = vim.fn.stdpath("config"),
      },
    },
  },

  setup = function(self)
    for lhs, rhs in pairs(self.mappings) do
      if type(rhs) == "string" then
        rhs = { rhs }
      end
      pcall(self.map, lhs, unpack(rhs))
    end
  end,
}
