--
-- colorschemes_.lua
--

-- variables
local g = vim.g

local M = {}

function M.gruvbox()
  -- enable italic text
  g.gruvbox_italic = true

  -- clear highlight from sign column
  g.gruvbox_sign_column = "bg0"

  -- use dark mode, hard contrast
  g.gruvbox_contrast_dark = "hard"

  -- don’t invert color of highlighted text
  g.gruvbox_invert_selection = false
end

function M.set_colorscheme(colorscheme)
  vim.cmd("colorscheme " .. colorscheme)
end

return setmetatable({}, {
  __index = function(self, key)
    if M[key] then
      return function()
        M[key]()
        M.set_colorscheme(key)
      end
    end
    return function() M.set_colorscheme(key) end
  end,
})
