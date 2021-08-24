--
-- keymaps.lua
--

local M = {}

-- default mapping options
local function options(opts)
  return vim.tbl_extend("keep", opts or {}, { noremap = true, silent = true })
end

for _, mode in ipairs({ "n", "i", "v", "x", "o" }) do
  M[mode .. "noremap"] = function(lhs, rhs, opts)
    vim.api.nvim_set_keymap(mode, lhs, rhs, options(opts))
  end
  M["buf_" .. mode .. "noremap"] = function(bufnr, lhs, rhs, opts)
    vim.api.nvim_buf_set_keymap(bufnr, mode, lhs, rhs, options(opts))
  end
end

return M
