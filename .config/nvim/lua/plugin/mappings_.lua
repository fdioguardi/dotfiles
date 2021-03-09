--
-- mappings_.lua
--

-- variables
local U = require('utils_')
local cmd = vim.cmd
local g = vim.g

-- set leader key
vim.api.nvim_set_keymap('', ' ', '', {})
g.mapleader = ' '

-- move a selected text up or down
U.xnoremap('K', ':call mappings#visual#move_up()<CR>')
U.xnoremap('J', ':call mappings#visual#move_down()<CR>')

-- globally replace a word or selection
U.map('n', '<leader>S', ':%s/\\<<C-r><C-w>\\>/', { silent = false })
U.map('v', '<leader>S', 'y:%s/<c-r>"/', { silent = false })

-- Y now yanks until the end of the line
U.nnoremap('Y', 'y$')

-- marks go to exact line and column
U.nnoremap("'", '`')

-- cut into an auxiliar register
U.nnoremap('<leader>c', '"ac')
U.nnoremap('<leader>d', '"ad')

-- ]b in normal mode will move to next buffer
U.nnoremap(']b', ':bnext<CR>')
-- [b in normal mode will move to previous buffer
U.nnoremap('[b', ':bprevious<CR>')

-- gf creates file if nonexistent
U.nnoremap('gf', ':e <cfile><CR>')

-- highlight after indenting
U.vnoremap('<', '<gv')
U.vnoremap('>', '>gv')

-- Better window navigation between splits
for _, direction in pairs({ 'h', 'j', 'k', 'l' }) do
  for _, mode in pairs({ 'n', 'v' }) do
    U.map(mode, '<c-'.. direction ..'>', '<c-w>' .. direction)
  end
end

for _, direction in pairs({ 'h', 'j', 'k', 'l' }) do
  U.map('t', '<C-'.. direction .. '>', '<C-\\><C-N><C-w>' .. direction)
end

-- exit terminal mode
U.map('t', '<Esc>', '<C-\\><C-n>')

-- Q executes macro instead of entering Ex mode
U.nnoremap('Q', '@q')
U.xnoremap('Q', '@q')
U.nnoremap('gQ', '@@')
U.xnoremap('gQ', '@@')

-- close buffer
U.nnoremap('ZB', ':bd<CR>')

-- save buffer
U.nnoremap('ZW', ':w<CR>')

-- cycle through relativenumber + number, number (only),
-- and no numbering (mnemonic: number).
U.nnoremap('<leader>n', ':call mappings#leader#cycle_numbering()<CR>')

-- backspace in Visual mode deletes selection
U.vnoremap('<BS>', 'd')

-- use CTRL-S for saving
U.nnoremap('<C-S>', ':update<CR>')
U.vnoremap('<C-S>', '<C-C>:update<CR>')
U.inoremap('<C-S>', '<Esc>:update<CR>gi')

-- CTRL-Z is Undo; not in cmdline though
U.nnoremap('<C-Z>', 'u')
U.inoremap('<C-Z>', '<C-O>u')
