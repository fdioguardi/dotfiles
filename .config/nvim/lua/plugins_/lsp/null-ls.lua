--
-- null-ls.lua
--

return {
  config = function()
    require("null-ls").setup({
      sources = {
        require("null-ls").builtins.diagnostics.shellcheck.with({
          diagnostics_format = "[#{c}] #{m}",
          filetypes = { "sh", "zsh" },
        }),
        require("null-ls").builtins.diagnostics.markdownlint,
        require("null-ls").builtins.formatting.black,
        require("null-ls").builtins.formatting.clang_format,
        require("null-ls").builtins.formatting.prettier,
        require("null-ls").builtins.formatting.rustfmt,
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
          filetypes = { "sh", "zsh" },
        }),
        require("null-ls").builtins.formatting.stylua,
        require("null-ls").builtins.formatting.trim_newlines,
        require("null-ls").builtins.formatting.trim_whitespace,
      },

      on_attach = function(client, bufnr)
        require("plugins_.lsp.on_attach")(client, bufnr)
        vim.cmd("autocmd! BufWrite <buffer> lua vim.lsp.buf.formatting_sync()")
      end,
    })
  end,
}
