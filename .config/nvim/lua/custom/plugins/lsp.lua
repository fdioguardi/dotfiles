return {
  {
    "neovim/nvim-lspconfig",
    dependencies = {
      {
        "folke/lazydev.nvim",
        ft = "lua", -- only load on lua files
        opts = {
          library = {
            -- See the configuration section for more details
            -- Load luvit types when the `vim.uv` word is found
            { path = "${3rd}/luv/library", words = { "vim%.uv" } },
          },
        },
      },

      { "smjonas/inc-rename.nvim", opts = {} },
    },

    config = function()
      -- configure capabilities
      local capabilities = nil
      if pcall(require, "cmp_nvim_lsp") then
        capabilities = require("cmp_nvim_lsp").default_capabilities()
      end

      -- configure servers
      for _, server in ipairs({
        "bashls",
        "jdtls",
        "lua_ls",
        "pyright",
        "ruff",
        "rust_analyzer",
        "taplo",
      }) do
        require("lspconfig")[server].setup({ capabilities = capabilities })
      end

      -- configure on_attach handler
      -- (K, grn, gra, grr, gri, grt, [d, ]d and <C-s> are Neovim defaults)
      vim.api.nvim_create_autocmd("LspAttach", {
        callback = function(args)
          local bufnr = args.buf
          -- set up mappings
          local function nmap(lhs, rhs, desc)
            require("custom.keymaps").nmap(lhs, rhs, desc, { buffer = bufnr })
          end
          local function vmap(lhs, rhs, desc)
            require("custom.keymaps").vmap(lhs, rhs, desc, { buffer = bufnr })
          end

          vmap(
            "<leader>lca",
            vim.lsp.buf.code_action,
            "LSP code actions in a range"
          )
          nmap("<leader>lca", vim.lsp.buf.code_action, "LSP code actions")
          nmap("<leader>lr", ":IncRename ", "LSP rename symbol")
          nmap("gd", vim.lsp.buf.definition, "LSP go to definition")

          require("custom.telescope").map(
            "<leader>e",
            "diagnostics",
            "LSP show diagnostics",
            { bufnr = 0, previewer = false, initial_mode = "normal" },
            { buffer = bufnr }
          )

          -- enable sign column
          vim.opt_local.signcolumn = "yes:1"

          -- configure handler
          vim.diagnostic.config({ update_in_insert = true })
        end,
      })
    end,
  },
}
