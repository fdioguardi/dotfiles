--
-- snippets_.lua
--

local M = {}

function M:map_snippets()
  local inoremap = require('utils_').inoremap

  inoremap('<C-j>',
    '<cmd>lua return require("snippets").expand_or_advance(1)<CR>')
  inoremap('<C-k>',
    '<cmd>lua return require("snippets").advance_snippet(-1)<CR>')
end

function M:setup()
  local snippets = require('snippets')

  self:map_snippets()

  -- snippets.set_ux(require'snippets.inserters.vim_input')

  snippets.snippets = {
    tex = {}
  }
end

return M
