--
-- conform.lua
--

return {
  "stevearc/conform.nvim",

  event = "BufWritePre",
  cmd = "ConformInfo",

  opts = {
    formatters_by_ft = {
      java = { "google-java-format" },
      json = { "fixjson", "jq" },
      lua = { "stylua" },
      markdown = { "markdownlint" },
      python = { "ruff_fix", "ruff_format", "ruff_organize_imports" },
      sh = { "shfmt" },
      xml = { "xmllint" },
      ["*"] = { "trim_whitespace", "trim_newlines", "typos", "codespell" },
    },
    format_on_save = { timeout_ms = 500, lsp_format = "fallback" },

    formatters = {
      shfmt = {
        prepend_args = { "-s", "-i", "2", "-bn", "-ci", "-sr" },
      },
    },
  },

  init = function() vim.o.formatexpr = "v:lua.require'conform'.formatexpr()" end,
}
