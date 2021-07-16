--
-- telescope.lua
--

local mappings = {
  ["<leader>f"] = "git_files",
  ["<leader>F"] = "grep_string",
  ["<leader>v"] = {
    "find_files", {
      file_ignore_patterns = {"undodir/", "spell/"},
      prompt_title = "Vimrc",
      cwd = vim.fn.stdpath("config"),
    },
  },
}

for lhs, rhs in pairs(mappings) do
  if type(rhs) == "string" then rhs = {rhs} end
  require("telescope_.mappings")(lhs, unpack(rhs))
end
