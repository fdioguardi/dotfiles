--
-- telescope_/mappings.lua
--

return function(lhs, fn, opts)
  local M = require("mappings_.keymaps")

  for _, set_keymap in ipairs({M.nnoremap, M.vnoremap}) do
    set_keymap(lhs, string.format(":lua require('telescope_').%s(%s)<CR>",
      fn, vim.inspect(opts or {}):gsub("\n", "")))
  end
end
