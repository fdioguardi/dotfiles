--
-- leader.lua
--

local __cycle_numbers = {
  ["00"] = function() vim.opt.nu, vim.opt.rnu = true, true end,
  ["01"] = function() vim.opt.nu, vim.opt.rnu = true, false end,
  ["10"] = function() vim.opt.nu, vim.opt.rnu = false, false end,
  ["11"] = function() vim.opt.nu, vim.opt.rnu = true, false end,
}

return {
  cycle_numbers = function()
    __cycle_numbers[(vim.opt.nu:get() and "1" or "0") ..
      (vim.opt.rnu:get() and "1" or "0")]()
  end,
}
