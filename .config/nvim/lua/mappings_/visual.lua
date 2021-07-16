--
-- visual.lua
--

local function move(address, at_limit)
  if (vim.fn.visualmode() == "V") and (not at_limit) then
    vim.api.nvim_feedkeys("gv=", "n", false)
    vim.cmd("'<,'>move " .. address)
  end
  vim.api.nvim_feedkeys("gv", "n", false)
end

return {
  move_up = function() move("'<-2", vim.api.nvim_win_get_cursor(0)[1] == 1) end,

  move_down = function()
    move("'>+1",
         vim.api.nvim_win_get_cursor(0)[1] == vim.api.nvim_buf_line_count(0))
  end,
}
