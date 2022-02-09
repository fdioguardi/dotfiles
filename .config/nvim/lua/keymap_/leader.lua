--
-- leader.lua
--

return {
  cycle_numbers = function()
    if vim.wo.rnu and vim.wo.nu then
      vim.wo.rnu, vim.wo.nu = false, true
    elseif not vim.wo.rnu and vim.wo.nu then
      vim.wo.rnu, vim.wo.nu = false, false
    elseif not vim.wo.rnu and not vim.wo.nu then
      vim.wo.rnu, vim.wo.nu = true, true
    elseif vim.wo.rnu and not vim.wo.nu then
      vim.wo.rnu, vim.wo.nu = false, true
    end
  end,
}
