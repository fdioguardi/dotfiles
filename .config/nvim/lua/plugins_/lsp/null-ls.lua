--
-- null-ls.lua
--

return {
  config = function()
    require("null-ls").config({
      sources = {
        require("null-ls").builtins.diagnostics.shellcheck,
        require("null-ls").builtins.diagnostics.markdownlint,
        require("null-ls").builtins.formatting.black.with({
          extra_args = { "--fast", "-l", "79" },
        }),
        require("null-ls").builtins.formatting.clang_format,
        require("null-ls").builtins.formatting.prettier,
        require("null-ls").builtins.formatting.shfmt.with({
          extra_args = {
            "-s",
            "-ln",
            "posix",
            "-i",
            "2",
            "-bn",
            "-ci",
            "-sr",
          },
        }),
        require("null-ls").builtins.formatting.stylua,
        require("null-ls").builtins.formatting.trim_newlines,
        require("null-ls").builtins.formatting.trim_whitespace,
      },
    })

    require("lspconfig")["null-ls"].setup({
      on_attach = function(client, bufnr)
        require("plugins_.lsp.on_attach")(client, bufnr)
        vim.cmd([[augroup format-on-save
          autocmd! * <buffer>
          autocmd! BufWritePre <buffer> lua vim.lsp.buf.formatting_sync()
          augroup END]])
      end,
    })
  end,
}
