--
-- telescope_.lua
--

require("telescope").setup({
  defaults = {
    layout_config = {prompt_position = "top"},
    sorting_strategy = "ascending",
  },
  pickers = {find_files = {follow = true, hidden = true}},
})

local M = {}

function M:git_files(builtin, options)
  if not pcall(builtin.git_files, options) then self.find_files(options) end
end

return setmetatable({}, {
  __index = function(self, key)
    local builtin = require("telescope.builtin")
    if M[key] then
      return function(options) M[key](self, builtin, options or {}) end
    end
    return function(options) builtin[key](options) end
  end,
})
