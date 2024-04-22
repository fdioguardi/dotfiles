--
-- mappings.lua
--

-- variables
local M = require("fdioguardi.keymaps")

for _, motion in ipairs({ "c", "d", "C", "D" }) do
  vim.keymap.set(
    { "n", "v" },
    "<leader>" .. motion,
    '"a' .. motion,
    { desc = "cut into an auxiliar register", silent = true }
  )
end

M.nmap("q:", "<nop>", "disable command history")

M.nmap("]b", ":bnext<CR>", "move to next buffer")
M.nmap("[b", ":bprevious<CR>", "move to previous buffer")

M.nmap("<C-d>", "<C-d>zz", "center cursor after scrolling half a page down")
M.nmap("<C-u>", "<C-u>zz", "center cursor after scrolling half a page up")

M.nmap("U", "u", "avoid mistakes")

vim.keymap.set(
  "t",
  "<Esc>",
  "<C-\\><C-n>",
  { silent = true, unique = true, desc = "exit terminal mode" }
)

M.nmap("ZB", ":bn|bd#<CR>", "close buffer")
M.nmap("ZW", ":update<CR>", "save buffer")

M.nmap("]S", "]s1z=", "correct next misspelled word")
M.nmap("[S", "[s1z=", "correct previous misspelled word")

M.nmap(
  "<leader>n",
  function() require("fdioguardi.keymaps.leader").cycle_numbers() end,
  "cycle through number settings"
)

vim.keymap.set(
  "n",
  "<leader>s",
  ":%s/\\<<C-r><C-w>\\>//g<Left><Left>",
  { desc = "globally substitute word" }
)

M.vmap(
  "<leader>S",
  [["sd:execute 'normal i' . join(sort(split(getreg('"s'))), ' ')<CR>]],
  "sort words"
)

M.nmap(
  "k",
  [[(v:count > 5 ? "m'" . v:count : "") . "k"]],
  "store upwards movement in jumplist",
  { expr = true }
)
M.nmap(
  "j",
  [[(v:count > 5 ? "m'" . v:count : "") . "j"]],
  "store downwards movement in jumplist",
  { expr = true }
)

M.xmap("K", ":<C-u>silent! '<,'>move-2<CR>gv=gv", "move selected text up")
M.xmap("J", ":<C-u>silent! '<,'>move'>+<CR>gv=gv", "move selected text down")

M.nmap(
  "0",
  "getline('.')[0 : col('.') - 2] =~# '^\\s\\+$' ? '0' : '^'",
  "toggle between 0 and ^",
  { expr = true }
)
