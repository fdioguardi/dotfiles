--
-- mappings.lua
--

-- variables
local M = require("mappings_.keymaps")

--[[ mappings defined on other files:

-- vim.g.mapleader = ' '

-- completion (only when active):
      buf_inoremap('<C-Space>', 'compe#complete("<C-Space>")', {expr = true})
      buf_inoremap('<C-y>', 'compe#confirm("<C-y>")', {expr = true})
      buf_inoremap('<C-c>', '<Esc>')

-- fuzzy finding:
      map([n|v], '<leader>f', ":lua require('telescope_')['git_files']()<CR>")
      map([n|v], '<leader>F', ":lua require('telescope_')['grep_string']()<CR>")
      map([n|v], '<leader>v', ":lua require('telescope_')['vim_files']()<CR>")

-- lsp (only on_attach):
      buf_nnoremap('gd', ':lua vim.lsp.buf['definition']()<CR>')
      buf_nnoremap('K', ':lua vim.lsp.buf['hover']()<CR>')
      map_telescope([n|v], '<leader>e', ":lua
        require('telescope_.mappings')['lsp_document_diagnostics']()<CR>")

  -- java:
      buf_nnoremap(0, "<leader>jc", ":lua require('jdtls').code_action()<CR>")
      buf_nnoremap(0, "<leader>jr",
                   ":lua require('jdtls').code_action(false, 'refactor')<CR>")

-- run code on buffer (only on specific filetype):
      buf_nnoremap(0, '<leader>r', :w<CR>:vs term://clear;
                                   [python|bash|ts-node] %<CR>)

--]]

-- move a selected text up or down
M.xnoremap("K", ":lua require('mappings_.visual').move_up()<CR>")
M.xnoremap("J", ":lua require('mappings_.visual').move_down()<CR>")

-- globally substitute a word
M.nnoremap("<leader>s", ":%s/\\<<C-r><C-w>\\>//g<Left><Left>", {silent = false})

-- Y now yanks until the end of the line
M.nnoremap("Y", "y$")

-- avoid mistakes
M.nnoremap("U", "u")

-- correct misspelled word
M.nnoremap("]S", "]s1z=")
M.nnoremap("[S", "[s1z=")

-- cut into an auxiliar register
for _, motion in ipairs({'c', 'd', 'C', 'D'}) do
M.nnoremap("<leader>" .. motion, '"a' .. motion)
M.vnoremap("<leader>" .. motion, '"a' .. motion)
end

-- move through quickfix list
M.nnoremap("<C-n>", ":lnext<CR>")
M.nnoremap("<C-p>", ":lprev<CR>")
M.nnoremap("<C-j>", ":cnext<CR>")
M.nnoremap("<C-k>", ":cprev<CR>")

-- ]b in normal mode will move to next buffer
M.nnoremap("]b", ":bnext<CR>")
-- [b in normal mode will move to previous buffer
M.nnoremap("[b", ":bprevious<CR>")

-- exit terminal mode
vim.api.nvim_set_keymap("t", "<Esc>", "<C-\\><C-n>",
                        {noremap = true, silent = true, unique = true})

-- Q executes macro instead of entering Ex mode
M.nnoremap("Q", "@q")

-- close buffer
M.nnoremap("ZB", ":bn|bd#<CR>")

-- save buffer
M.nnoremap("ZW", ":update<CR>")

-- cycle through relativenumber + number, number (only), and no numbering
M.nnoremap("<leader>n", ":lua require('mappings_.leader').cycle_numbers()<CR>")

-- backspace in Visual mode deletes selection
M.vnoremap("<BS>", "d")

-- 0 toggles between 0 and ^
M.nnoremap("0", "getline('.')[0 : col('.') - 2] =~# '^\\s\\+$' ? '0' : '^'",
           {expr = true})
