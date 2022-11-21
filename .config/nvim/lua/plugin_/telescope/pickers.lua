--
-- pickers.lua
--

local M = {}
local builtin = require("telescope.builtin")

function M.git_files(options)
  if not pcall(builtin.git_files, options) then M.find_files(options) end
end

return setmetatable(M, { __index = builtin })
