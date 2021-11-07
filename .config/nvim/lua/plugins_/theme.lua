--
-- theme.lua
--

local pre_hook = {
  gruvbox = function()
    vim.g.gruvbox_italic = true
    vim.g.gruvbox_sign_column = "bg0"
    vim.g.gruvbox_contrast_dark = "hard"
    vim.g.gruvbox_invert_selection = false
  end,
}

local post_hook = {
  monokai = function()
    for _, hg in ipairs({ "CursorLineNr", "LineNr", "Normal", "SignColumn" }) do
      vim.cmd("highlight " .. hg .. " guibg=none")
    end
  end,
}

return setmetatable({}, {
  __index = function(self, key)
    return function()
      pcall(pre_hook[key])
      vim.cmd("colorscheme " .. key)
      pcall(post_hook[key])
    end
  end,
})
