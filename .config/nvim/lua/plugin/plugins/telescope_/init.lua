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
    ['prompt_position'] = 'top',
    ['sorting_strategy'] = 'ascending',
  },
})

require('telescope').load_extension('fzy_native')

local function merge_options(external_options, default_options)
  return vim.tbl_deep_extend('keep', external_options, default_options)
end

local M = {}

function M:find_files(builtin, options)
  builtin.find_files(merge_options(options, {
    ['find_command'] = {
      'rg',
      '--no-heading',
      '--smart-case',
      '--files',
      '--hidden',
    },
  }))
end

function M:config_files(_, options)
  self.find_files(merge_options(options, {
    prompt_title = ".config/",
    ['cwd'] = vim.env.XDG_CONFIG_HOME or (vim.env.HOME .. "/.config/"),
  }))
end

function M:find_all_files(_, options)
  self.find_files(merge_options(options, {
        prompt_title = vim.env.HOME,
        ['cwd'] = vim.env.HOME,
    }))
end

function M:vim_files(_, options)
  self.find_files(merge_options(options, {
    prompt_title = "Vimrc",
      ['cwd'] = (vim.env.XDG_CONFIG_HOME
      or (vim.env.HOME .. "/.config")) .. "/nvim/",
  }))
end

function M:git_files(builtin, options)
  local is_project = pcall(builtin.git_files, merge_options(options, {
      ['recurse_submodules'] = true,
      ['show_untracked'] = false,
    }))

  if not is_project then
    self.find_files(options)
  end
end

return setmetatable({}, {
  __index = function(self, key)
    local builtin = require('telescope.builtin')
    if M[key] then
      return function(options) M[key](self, builtin, options or {}) end
    else
      return function(options) builtin[key](options) end
    end
  end
})
