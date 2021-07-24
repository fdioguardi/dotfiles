--
-- format.lua
--

return {
  black = {formatCommand = "black -q --fast -l 79 -", formatStdin = true},

  clang_format = {formatCommand = "clang-format", formatStdin = true},

  google_java_format = {
    formatCommand = "google-java-format -",
    formatStdin = true,
  },

  prettier = {
    formatCommand = "prettier --stdin-filepath ${INPUT}",
    formatStdin = true,
  },

  shellcheck = {
    lintCommand = "shellcheck -x -f gcc",
    lintSource = "shellcheck",
    lintFormats = {
      "%f:%l:%c: %trror: %m", "%f:%l:%c: %tarning: %m", "%f:%l:%c: %tote: %m",
    },
  },

  shfmt = {formatCommand = "shfmt -s -i 2 -bn -ci -sr", formatStdin = true},
}
