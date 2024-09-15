return {
  {
    "neovim/nvim-lspconfig",
    dependencies = {
      "folke/lazydev.nvim",
      ft = "lua", -- only load on lua files
      dependencies = { "Bilal2453/luvit-meta", lazy = true },
      opts = {
        library = {
          -- See the configuration section for more details
          -- Load luvit types when the `vim.uv` word is found
          { path = "luvit-meta/library", words = { "vim%.uv" } },
        },
      },

      { "smjonas/inc-rename.nvim", opts = {} },

      { "ray-x/lsp_signature.nvim", opts = {} },
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
        "jsonls",
        "lua_ls",
        "ruff_lsp",
        "taplo",
      }) do
        require("lspconfig")[server].setup({ capabilities = capabilities })
      end

      -- configure on_attach handler
      vim.api.nvim_create_autocmd("LspAttach", {
        callback = function(args)
          local bufnr = args.buf
          local client = assert(
            vim.lsp.get_client_by_id(args.data.client_id),
            "must have valid client"
          )
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
          nmap("K", vim.lsp.buf.hover, "LSP display hover information")
          nmap("gd", vim.lsp.buf.definition, "LSP go to definition")
          nmap("gi", vim.lsp.buf.implementation, "LSP list implementations")
          nmap("gr", vim.lsp.buf.references, "LSP go to references")

          nmap("[d", vim.diagnostic.goto_prev, "LSP go to previous diagnostic")
          nmap("]d", vim.diagnostic.goto_next, "LSP go to next diagnostic")

          require("custom.telescope").map(
            "<leader>e",
            "lsp_document_diagnostics",
            "LSP show diagnostics",
            { previewer = false, initial_mode = "normal" },
            { buffer = bufnr }
          )

          -- enable sign column
          vim.opt_local.signcolumn = "yes:1"

          -- enable signature help when possible
          if client.server_capabilities.signature_help then
            if pcall(require, "lsp_signature") then
              require("lsp_signature").on_attach({ hint_enable = false })
            end
          end

          -- configure handler
          vim.diagnostic.config({ update_in_insert = true })
        end,
      })
    end,
  },
}
