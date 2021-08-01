--
-- theme.lua
--

local M = {}

function M.pre_gruvbox()
  vim.g.gruvbox_italic = true

  vim.g.gruvbox_sign_column = "bg0"

  vim.g.gruvbox_contrast_dark = "hard"

  vim.g.gruvbox_invert_selection = false
end

function M.post_monokai()
  vim.cmd("highlight LineNr       guibg=none")
  vim.cmd("highlight CursorLineNr guibg=none")
  vim.cmd("highlight SignColumn   guibg=none")
end

return setmetatable({}, {
  __index = function(self, key)
    return function()
      pcall(M["pre_" .. key])
      vim.cmd("colorscheme " .. key)
      pcall(M["post_" .. key])
    end
  end,
})
