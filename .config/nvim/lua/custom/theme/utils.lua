--
-- utils.lua
--

local M = {}

-- Update the attributes of a highlight group, keeping the existing ones
-- @param group Group
-- @param attrs Attributes
local function update(group, attrs)
  local current = vim.api.nvim_get_hl(0, { name = group, link = false })
  vim.api.nvim_set_hl(0, group, vim.tbl_extend("force", current, attrs))
end

-- Define bg color
-- @param group Group
-- @param color Color
M.bg = function(group, col) update(group, { bg = col }) end

-- Define fg color
-- @param group Group
-- @param color Color
M.fg = function(group, col) update(group, { fg = col }) end

-- Define bg and fg color
-- @param group Group
-- @param fgcol Fg Color
-- @param bgcol Bg Color
M.fg_bg = function(group, fgcol, bgcol)
  update(group, { fg = fgcol, bg = bgcol })
end

return M
