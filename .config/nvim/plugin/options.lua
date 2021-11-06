--
-- options.lua
--

-- stylua: ignore start

-- 1 important

-- 2 moving arround, searching and patterns
vim.opt.ignorecase = true       -- ignore case when searching
vim.opt.smartcase  = true       -- overwrite ignorecase when search pattern contains upper case characters

-- 3 tags
-- 4 displaying text
vim.opt.breakindent    = true           -- visually indent wrapped lines
vim.opt.fillchars      = { eob = " " }  -- don't show ~ on empty lines
vim.opt.lazyredraw     = true           -- don't redraw while executing macros
vim.opt.number         = true           -- show absolute number of current line

-- 5 syntax, highlighting and spelling
vim.opt.cursorline    = true                  -- enable highlight at cursor position
vim.opt.cursorlineopt = "number"              -- highlight current line number
vim.opt.guicursor     = ""                    -- show block cursor for every mode
vim.opt.hlsearch      = false                 -- don't highlight search results
vim.opt.spelllang     = { "en", "es", "it" }  -- enable spell-check in more languages
vim.opt.termguicolors = true                  -- use GUI colors for the terminal

-- 6 multiple windows
vim.opt.laststatus = 1     -- only show statusline with multiple windows
vim.opt.splitbelow = true  -- open new split bellow
vim.opt.splitright = true  -- open new split to the right

-- 7 multiple tab pages
vim.opt.showtabline = 0  -- hide tabline

-- 8 terminal
-- 9 using the mouse
vim.opt.mouse = "a"  -- enable using the mouse if available

-- 10 printing
-- 11 messages and info
vim.opt.confirm    = true      -- start a dialog when a command fails
vim.opt.ruler      = false     -- don't show cursor position
vim.opt.showcmd    = false     -- don't show (partial) command keys
vim.opt.showmode   = false     -- don't show current mode
vim.opt.shortmess:append("c")  -- don't show completion messages

-- 12 selecting text
vim.opt.clipboard = { "unnamedplus" }  -- always use the system’s clipboard

-- 13 editing text
vim.opt.undofile = true  -- persist undo history

-- 14 tabs and indenting
-- 15 folding
-- 16 diff mode
-- 17 mapping
-- 18 reading and writing files
-- 19 the swap file
vim.opt.swapfile = false  -- don't swap files

-- 20 command line editing
vim.opt.wildignorecase = true  -- ignore case when completing file names

-- 21 executing external commands
-- 22 running make and jumping to errors
-- 23 language specific
-- 24 multi-byte characters
-- 25 various
vim.opt.virtualedit = "block"  -- allow cursor to move where there is no text in visual block mode

-- stylua: ignore end
