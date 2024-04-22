--
-- options.lua
--

-- stylua: ignore start

-- 1 important

-- 2 moving around, searching and patterns
vim.opt.ignorecase = true       -- ignore case when searching
vim.opt.smartcase  = true       -- overwrite ignorecase when search pattern contains upper case characters

-- 3 tags
-- 4 displaying text
vim.opt.breakindent    = true           -- visually indent wrapped lines
vim.opt.cmdheight      = 0              -- number of lines used for the command-line
vim.opt.fillchars      = { eob = " " }  -- don't show ~ on empty lines
vim.opt.lazyredraw     = true           -- don't redraw while executing macros
vim.opt.number         = true           -- show absolute number of current line

-- 5 syntax, highlighting and spelling
vim.opt.cursorline    = true                  -- enable highlight at cursor position
vim.opt.cursorlineopt = "number"              -- highlight current line number
vim.opt.guicursor     = ""                    -- show block cursor for every mode
vim.opt.hlsearch      = false                 -- don't highlight search results
vim.opt.spelllang     = { "en", "es", "it" }  -- enable spell-check in more languages
vim.opt.spell         = true                  -- highlight spelling mistakes
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

-- 10 messages and info
vim.opt.confirm    = true      -- start a dialog when a command fails
vim.opt.ruler      = false     -- don't show cursor position
vim.opt.showcmd    = false     -- don't show (partial) command keys
vim.opt.showmode   = false     -- don't show current mode
vim.opt.shortmess:append("c")  -- don't show completion messages

-- 11 selecting text
vim.opt.clipboard = { "unnamedplus" }  -- always use the system’s clipboard

-- 12 editing text
vim.opt.undofile = true  -- persist undo history

-- 13 tabs and indenting
-- 14 folding
-- 15 diff mode
-- 16 mapping
-- 17 reading and writing files
vim.opt.bomb = false

-- 18 the swap file
vim.opt.swapfile = false  -- don't swap files

-- 19 command line editing
vim.opt.wildignorecase = true  -- ignore case when completing file names

-- 20 executing external commands
-- 21 running make and jumping to errors
-- 22 language specific
-- 23 multi-byte characters
-- 24 various
vim.opt.virtualedit = "block"  -- allow cursor to move where there is no text in visual block mode

-- stylua: ignore end
