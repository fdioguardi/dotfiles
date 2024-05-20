--
-- keymaps.lua
--

local M = {}

-- default mapping options
local function options(opts, desc)
  return vim.tbl_extend("keep", opts or {}, { silent = true, desc = desc })
end

for _, mode in ipairs({ "i", "n", "o", "s", "v", "x" }) do
  M[mode .. "map"] = function(lhs, rhs, desc, opts)
    vim.keymap.set(mode, lhs, rhs, options(opts, desc))
  end
end

return M
