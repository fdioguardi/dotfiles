--
-- text_objects.lua
--

local M = require("mappings_.keymaps")

local characters = { "$", ",", ".", "/", "_" }

-- setup text objects
for _, char in ipairs(characters) do
  M.xnoremap("i" .. char, ":<C-u>normal! T" .. char .. "vt" .. char .. "<CR>")
  M.onoremap("i" .. char, ":normal vi" .. char .. "<CR>")
  M.xnoremap("a" .. char, ":<C-u>normal! F" .. char .. "vf" .. char .. "<CR>")
  M.onoremap("a" .. char, ":normal va" .. char .. "<CR>")
end
