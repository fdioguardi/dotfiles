--
-- gruvbox_.lua
--

-- variables
local g = vim.g

-- enable italic text
g.gruvbox_italic = true

-- clear highlight from sign column
g.gruvbox_sign_column = 'bg0'

-- use dark mode, hard contrast
g.gruvbox_contrast_dark = 'hard'

-- don’t invert color of highlighted text
g.gruvbox_invert_selection = false

require("colorbuddy").colorscheme("gruvbox")
