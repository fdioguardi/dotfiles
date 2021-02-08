--
-- utils_.lua
--

local U = {}

-- default mapping options
function U.map(mode, lhs, rhs, opts)
  vim.api.nvim_set_keymap(mode, lhs, rhs,
    vim.tbl_extend('keep', opts or {}, {
      noremap = true,
      silent = true
    })
  )
end

function U.nnoremap(lhs, rhs)
  U.map('n', lhs, rhs)
end

function U.vnoremap(lhs, rhs)
  U.map('v', lhs, rhs)
end

function U.inoremap(lhs, rhs)
  U.map('i', lhs, rhs)
end

function U.xnoremap(lhs, rhs)
  U.map('x', lhs, rhs)
end

return U
