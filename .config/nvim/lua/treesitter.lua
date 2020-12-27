--
-- treesitter.lua
--

require('nvim-treesitter.configs').setup {
    ensure_installed = { },
    highlight = {
        enable = true,  -- false will disable the whole extension
        disable = { },  -- list of languages that will be disabled
        use_languagetree = true,    -- enable language injection
    },
}
