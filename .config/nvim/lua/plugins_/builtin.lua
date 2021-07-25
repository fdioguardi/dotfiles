--
-- builtin.lua
--

-- disable language providers
for _, language in ipairs({
  "node",
  "perl",
  "python",
  "python3",
  "pythonx",
  "ruby",
}) do
  vim.g["loaded_" .. language .. "_provider"] = 0
end

-- don't create .netrwhist
vim.g.netrw_dirhistmax = 0

-- disable standard plugins
for _, plugin in ipairs({
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
  "vimball",
  "vimballPlugin",
  "zip",
  "zipPlugin",
}) do
  vim.g["loaded_" .. plugin] = 1
end
