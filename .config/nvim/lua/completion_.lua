--
-- completion_.lua
--

return function(options)
  local buf_inoremap = require("mappings_.keymaps").buf_inoremap

  buf_inoremap(0, "<C-Space>", "compe#complete('<C-Space>')", {expr = true})
  buf_inoremap(0, "<C-y>", "compe#confirm('<C-y>')", {expr = true})
  buf_inoremap(0, "<C-c>", "<Esc>")

  vim.opt.completeopt = {"menuone", "noselect"}

  require("compe").setup(vim.tbl_deep_extend("keep", options or {}, {
    source = {path = true, buffer = true},
  }), 0)
end
