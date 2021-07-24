--
-- globals.lua
--


function _G.dump(...) print(unpack(vim.tbl_map(vim.inspect, {...}))) end
