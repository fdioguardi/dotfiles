--
-- telescope_.lua
--

require('telescope').setup({
  ['defaults'] = {
    ['prompt_position'] = 'top',
    ['sorting_strategy'] = 'ascending',
    ['file_ignore_patterns'] = {
      'undodir/*',
      'spell/*',
      'Steam/*',
      'Pharo/*',
      '.cargo/*',
    },
}})

local function merge_options(external_options, default_options)
  return vim.tbl_deep_extend('keep', external_options, default_options)
end

local T = {}

function T:find_files(builtin, options)
  builtin.find_files(merge_options(options, {
      ['find_command'] = {
        'rg',
        '--color=never',
        '--no-heading',
        '--smart-case',
        '--files',
        '--hidden',
      },
  }))
end

function T:git_files(builtin, options)
  local is_project = pcall(builtin.git_files, merge_options(options, {
      -- ['previewer'] = false,
      ['recurse_submodules'] = true,
      ['show_untracked'] = false,
    }))

  if not is_project then
    self.find_files(options)
  end
end

function T:find_all_files(builtin, options)
    self.find_files(merge_options(options, {
      ['cwd'] = '~',
    }))
end

return setmetatable({}, {
  __index = function(self, key)
    local builtin = require('telescope.builtin')
    if T[key] then
      return function(options) T[key](self, builtin, options or {}) end
    else
      return function(options) builtin[key](options) end
    end
  end
})
