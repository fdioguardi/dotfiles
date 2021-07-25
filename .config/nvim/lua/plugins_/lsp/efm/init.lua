--
-- efm.lua
--

local M = require("plugins_.lsp.efm.format")

return {
  languages = {
    c = { M.clang_format },
    java = { M.google_java_format },
    javascript = { M.prettier },
    json = { M.prettier },
    lua = { M.stylua },
    markdown = { M.prettier },
    python = { M.black },
    sh = { M.shfmt, M.shellcheck },
    typescript = { M.prettier },
    zsh = { M.shfmt, M.shellcheck },
  },

  setup = function(self)
    require("lspconfig").efm.setup({
      init_options = { documentFormatting = true },
      filetypes = vim.tbl_keys(self.languages),
      settings = { languages = self.languages },
      on_attach = function()
        vim.cmd([[augroup format-on-save
        autocmd! * <buffer>
        autocmd! BufWritePre <buffer> lua vim.lsp.buf.formatting_sync()
        augroup END]])
      end,
    })
  end,
}
