--
-- conform.lua
--

return {
  "stevearc/conform.nvim",

  event = "BufReadPre",
  cmd = "ConformInfo",

  opts = {
    formatters_by_ft = {
      java = { "google-java-format" },
      json = { "fixjson", "jq" },
      lua = { "stylua" },
      markdown = { "markdownlint" },
      python = { "ruff_fix", "ruff_format" },
      ["*"] = { "trim_whitespace", "trim_newlines", "typos", "codespell" },
    },
    format_on_save = { timeout_ms = 500, lsp_fallback = true },
  },

  init = function() vim.o.formatexpr = "v:lua.require'conform'.formatexpr()" end,

  formatters = {
    shfmt = {
      prepend_args = { "-s", "-ln", "posix", "-i", "2", "-bn", "-ci", "-sr" },
    },
  },
}
