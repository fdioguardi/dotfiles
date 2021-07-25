--
-- pickers.lua
--

require("telescope").setup({
  defaults = {
    layout_config = { prompt_position = "top" },
    sorting_strategy = "ascending",
  },
  pickers = { find_files = { follow = true, hidden = true } },
})

local builtin = require("telescope.builtin")
local M = {}

function M.git_files(options)
  if not pcall(builtin.git_files, options) then
    M.find_files(options)
  end
end

return setmetatable(M, { __index = builtin })
