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
      if pcall(require, "cmp_nvim_lsp") then
        vim.lsp.config(
          "*",
          { capabilities = require("cmp_nvim_lsp").default_capabilities() }
        )
      end

      -- configure servers, skipping the ones that aren't installed
      -- (when cmd is a function, e.g. jdtls, assume the binary is the name)
      vim.lsp.enable(vim.tbl_filter(function(name)
        local cmd = vim.lsp.config[name] and vim.lsp.config[name].cmd
        local bin = type(cmd) == "table" and cmd[1] or name
        return vim.fn.executable(bin) == 1
      end, {
        "bashls",
        "jdtls",
        "lua_ls",
        "pyright",
        "ruff",
        "rust_analyzer",
        "taplo",
      }))

      -- configure diagnostics
      vim.diagnostic.config({ update_in_insert = true })

      -- configure on_attach handler
      -- (K, grn, gra, grr, gri, grt, [d, ]d and <C-s> are Neovim defaults)
      vim.api.nvim_create_autocmd("LspAttach", {
        group = vim.api.nvim_create_augroup("lsp_attach", { clear = true }),
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
        end,
      })
    end,
  },
}
