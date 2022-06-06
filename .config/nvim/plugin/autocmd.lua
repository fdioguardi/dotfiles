--
-- autocmd.lua
--

vim.api.nvim_create_augroup("highlight_on_yank", {})
vim.api.nvim_create_autocmd("TextYankPost", {
  callback = function()
    vim.highlight.on_yank({ timeout = 300, on_visual = false })
  end,
  group = "highlight_on_yank",
  desc = "Highlight the yanked text",
})

vim.api.nvim_create_augroup("vimrc_incsearch_highlight", {})
vim.api.nvim_create_autocmd("CmdLineEnter", {
  callback = function()
    vim.opt.hlsearch = true
  end,
  pattern = "/,\\?",
  group = "vimrc_incsearch_highlight",
  desc = "Highlight the incsearch matches",
})
vim.api.nvim_create_autocmd("CmdLineLeave", {
  callback = function()
    vim.opt.hlsearch = false
  end,
  pattern = "/,\\?",
  group = "vimrc_incsearch_highlight",
  desc = "Remove highlight from incsearch matches",
})

vim.api.nvim_create_augroup("number_toggle", {})
vim.api.nvim_create_autocmd({ "FocusGained", "BufEnter", "WinEnter" }, {
  callback = function()
    if vim.wo.number then
      vim.opt.relativenumber = true
    end
  end,
  group = "number_toggle",
  desc = "Toggle relative line numbers on",
})
vim.api.nvim_create_autocmd({ "FocusLost", "BufLeave", "WinLeave" }, {
  callback = function()
    if vim.wo.number then
      vim.opt.relativenumber = false
    end
  end,
  group = "number_toggle",
  desc = "Toggle relative line numbers off",
})
