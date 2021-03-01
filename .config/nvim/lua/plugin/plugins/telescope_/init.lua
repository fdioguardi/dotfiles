--
-- telescope_.lua
--

require('telescope').setup({
  ['defaults'] = {
    ['file_ignore_patterns'] = {
      'undodir/*',
      'spell/*',
      'Steam/*',
      'Pharo/*',
      '.cargo/*',
    },
    ['file_sorter'] = require('telescope.sorters').get_fzy_sorter,
    ['prompt_position'] = 'top',
    ['sorting_strategy'] = 'ascending',
}})

local function merge_options(external_options, default_options)
  return vim.tbl_deep_extend('keep', external_options, default_options)
end

local function base_dir()
  local home = vim.loop.os_homedir()
  local cwd = vim.loop.cwd()

  if cwd == home then
    return home
  end

  if cwd:find(home) then
    return home .. "/" .. vim.split(cwd, "/")[4]
  end

  return "/" .. vim.split(cwd, "/")[2]
end

local T = {}

function T:find_files(builtin, options)
  local cwd
  if not options['cwd'] then
    cwd = base_dir()
  end

  builtin.find_files(merge_options(options, {
      ['cwd'] = cwd,
  }))
end

function T:git_files(builtin, options)
  local is_project = pcall(builtin.git_files, merge_options(options, {
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
