--
-- mappings_.lua
--

local function map_telescope(lhs, func)
  local map = require('utils_').map

  local rhs = string.format(
  ":lua require('plugin.plugins.telescope_')['%s']()<CR>",
  func)

  for _, mode in pairs({ 'n', 'v' }) do
    map(mode, lhs, rhs)
  end
end

local mappings = {
  ['<leader>f'] = 'git_files',
  ['<leader>Ff'] = 'find_all_files',
  ['<leader>Fc'] = 'config_files',
  ['<leader>Fv'] = 'vim_files',
}

for lhs, func in pairs(mappings) do
  map_telescope(lhs, func)
end

return map_telescope
