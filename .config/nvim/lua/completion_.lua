--
-- completion_.lua
--

return function(options)
  local inoremap = require('utils_').inoremap

  inoremap('<C-Space>', 'compe#complete("<C-Space>")', { expr = true })
  inoremap('<C-y>', 'compe#confirm("<C-y>")', { expr = true })

  require('compe').setup(vim.tbl_deep_extend('keep', options or {}, {
    source = { path = true, buffer = true, }
  }), 0)
end
