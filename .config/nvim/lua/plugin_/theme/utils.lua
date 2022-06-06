--
-- utils.lua
--

local M = {}

-- Define bg color
-- @param group Group
-- @param color Color
M.bg = function(group, col)
  vim.cmd("highlight " .. group .. " guibg=" .. col)
end

-- Define fg color
-- @param group Group
-- @param color Color
M.fg = function(group, col)
  vim.cmd("highlight " .. group .. " guifg=" .. col)
end

-- Define bg and fg color
-- @param group Group
-- @param fgcol Fg Color
-- @param bgcol Bg Color
M.fg_bg = function(group, fgcol, bgcol)
  vim.cmd("highlight " .. group .. " guifg=" .. fgcol .. " guibg=" .. bgcol)
end

return M
