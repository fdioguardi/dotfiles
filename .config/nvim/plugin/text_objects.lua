--
-- text_objects.lua
--

local imap = require("custom.keymaps").imap

local characters = { "$", ",", ".", "/", "_" }

local M = {}
for _, mode in pairs({ "x", "o" }) do
  M[mode .. "map"] = function(...) vim.keymap.set(mode, ...) end
end

-- setup text objects
for _, char in ipairs(characters) do
  M.xmap("i" .. char, ":<C-u>normal! T" .. char .. "vt" .. char .. "<CR>")
  M.omap("i" .. char, ":normal vi" .. char .. "<CR>")
  M.xmap("a" .. char, ":<C-u>normal! F" .. char .. "vf" .. char .. "<CR>")
  M.omap("a" .. char, ":normal va" .. char .. "<CR>")
end

-- break undo sequence
for _, char in ipairs(characters) do
  imap(char, char .. "<C-g>u", "break undo sequence")
end
