--
-- leader.lua
--

return {
  cycle_numbers = function()
    ({
      ["00"] = function()
        vim.opt.nu, vim.opt.rnu = true, true
      end,
      ["01"] = function()
        vim.opt.nu, vim.opt.rnu = true, false
      end,
      ["10"] = function()
        vim.opt.nu, vim.opt.rnu = false, false
      end,
      ["11"] = function()
        vim.opt.nu, vim.opt.rnu = true, false
      end,
    })[(vim.wo.nu and "1" or "0") .. (vim.wo.rnu and "1" or "0")]()
  end,
}
