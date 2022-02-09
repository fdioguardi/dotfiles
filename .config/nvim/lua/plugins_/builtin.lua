--
-- builtin.lua
--

local function setup_netrw()
  vim.g.netrw_banner = 0 -- don't show banner
  vim.g.netrw_dirhistmax = 0 -- don't create .netrwhist
  vim.g.netrw_liststyle = 3 -- list files in a tree
end

local function disable_providers()
  for _, language in
    ipairs({ "node", "perl", "python", "python3", "pythonx", "ruby" })
  do
    vim.g["loaded_" .. language .. "_provider"] = 0
  end
end

local function disable_plugins()
  for _, plugin in
    ipairs({
      "2html_plugin",
      "getscript",
      "getscriptPlugin",
      "gzip",
      "2html_plugin",
      "logipat",
      "man",
      "matchit",
      "netrwFileHandlers",
      "netrwSettings",
      "remote_plugins",
      "rplugin",
      "rrhelper",
      "shada_plugin",
      "spec",
      "spellfile_plugin",
      "tar",
      "tarPlugin",
      "tutor_mode",
      "vimball",
      "vimballPlugin",
      "zip",
      "zipPlugin",
    })
  do
    vim.g["loaded_" .. plugin] = 1
  end
end

return {
  setup = function()
    setup_netrw()
    disable_providers()
    disable_plugins()
  end,
}
