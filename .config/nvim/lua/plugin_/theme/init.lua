--
-- theme.lua
--

local utils = require("plugin_.theme.utils")

local function hl_telescope(dark_black, black, grey, white, red, green)
  utils.fg_bg("TelescopeBorder", black, black)
  utils.fg_bg("TelescopePromptBorder", grey, grey)

  utils.fg_bg("TelescopePromptNormal", white, grey)
  utils.fg_bg("TelescopePromptPrefix", red, grey)
  utils.fg("TelescopePromptCounter", white)

  utils.bg("TelescopeNormal", black)

  utils.fg_bg("TelescopePreviewTitle", dark_black, green)
  utils.fg_bg("TelescopePromptTitle", dark_black, red)
  utils.fg_bg("TelescopeResultsTitle", black, black)

  utils.bg("TelescopeSelection", grey)
end

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
      local colors = require("monokai").classic

      utils.bg(hg, "NONE")

      hl_telescope(
        colors.base0, -- titles
        colors.base1, -- bg
        colors.base4, -- prompt bg
        colors.base8, -- text
        colors.red, -- title bg
        colors.green -- title bg
      )
    end
  end,
}

return setmetatable({}, {
  __index = function(_, key)
    return function()
      pcall(pre_hook[key])
      vim.cmd("colorscheme " .. key)
      pcall(post_hook[key])
    end
  end,
})
