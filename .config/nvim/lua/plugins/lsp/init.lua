return {
  {
    "neovim/nvim-lspconfig",
    config = function()
      local capabilities = require("cmp_nvim_lsp").default_capabilities()

      for _, server in ipairs({ "pyright", "taplo", "lua_ls" }) do
        require("lspconfig")[server].setup(vim.tbl_extend("force", {
          capabilities = capabilities,
          on_attach = require("fdioguardi.lsp").settings.on_attach,
        }, require("fdioguardi.lsp").server[server] or {}))
      end
    end,
  },

  {
    "nvimtools/none-ls.nvim",
    config = function() require("plugins.lsp.none-ls").config() end,
  },

  "ray-x/lsp_signature.nvim",

  {
    "smjonas/inc-rename.nvim",
    config = function() require("inc_rename").setup() end,
  },
}
