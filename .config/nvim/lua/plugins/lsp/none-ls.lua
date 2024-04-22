--
-- none-ls.lua
--

return {
  config = function()
    require("null-ls").setup({
      sources = {
        require("null-ls").builtins.code_actions.proselint,
        require("null-ls").builtins.diagnostics.markdownlint,
        require("null-ls").builtins.diagnostics.proselint,
        require("null-ls").builtins.diagnostics.shellcheck.with({
          diagnostics_format = "[#{c}] #{m}",
          filetypes = { "sh", "zsh" },
        }),
        require("null-ls").builtins.formatting.black,
        require("null-ls").builtins.formatting.clang_format,
        require("null-ls").builtins.formatting.isort.with({
          extra_args = { "--profile", "black" },
        }),
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
          filetypes = { "sh", "zsh" },
        }),
        require("null-ls").builtins.formatting.styler,
        require("null-ls").builtins.formatting.stylua,
        require("null-ls").builtins.formatting.trim_newlines,
        require("null-ls").builtins.formatting.trim_whitespace,
        require("null-ls").builtins.formatting.xmllint.with({
          extra_args = { "--noconcat" },
        }),
      },
      on_attach = function(client, bufnr)
        require("fdioguardi.lsp").settings.on_attach(client, bufnr)
        vim.api.nvim_create_augroup("format_on_save", { clear = false })
        vim.api.nvim_create_autocmd("BufWrite", {
          callback = function() vim.lsp.buf.format({ async = true }) end,
          buffer = 0,
          desc = "Auto format buffer on save",
          group = "format_on_save",
        })
      end,
    })
  end,
}
