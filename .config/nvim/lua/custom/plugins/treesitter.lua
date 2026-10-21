local parsers = {
  "bash",
  "csv",
  "diff",
  "dockerfile",
  "editorconfig",
  "git_config",
  "git_rebase",
  "gitattributes",
  "gitcommit",
  "gitignore",
  "java",
  "javascript",
  "json",
  "lua",
  "make",
  "markdown",
  "markdown_inline",
  "python",
  "toml",
  "typescript",
  "vim",
  "vimdoc",
  "vue",
}

-- filetypes that keep their regular indentexpr
local indent_disable = { python = true }

return {
  {
    "nvim-treesitter/nvim-treesitter",
    branch = "main",
    build = ":TSUpdate",
    lazy = false,
    config = function()
      require("nvim-treesitter").install(parsers)

      vim.api.nvim_create_autocmd("FileType", {
        group = vim.api.nvim_create_augroup("treesitter", { clear = true }),
        callback = function(args)
          if not pcall(vim.treesitter.start, args.buf) then return end
          if not indent_disable[vim.bo[args.buf].filetype] then
            vim.bo[args.buf].indentexpr =
              "v:lua.require'nvim-treesitter'.indentexpr()"
          end
        end,
        desc = "Enable treesitter highlighting and indentation",
      })
    end,
  },

  {
    "nvim-treesitter/nvim-treesitter-textobjects",
    branch = "main",
    lazy = false,
    config = function()
      require("nvim-treesitter-textobjects").setup({
        select = { lookahead = true },
        move = { set_jumps = true },
      })

      local function select(query)
        return function()
          require("nvim-treesitter-textobjects.select").select_textobject(
            query,
            "textobjects"
          )
        end
      end
      local function move(fn, query)
        return function()
          require("nvim-treesitter-textobjects.move")[fn](query, "textobjects")
        end
      end

      for lhs, query in pairs({
        af = "@function.outer",
        ["if"] = "@function.inner",
        ac = "@class.outer",
        ic = "@class.inner",
      }) do
        vim.keymap.set({ "x", "o" }, lhs, select(query), { desc = query })
      end

      for lhs, args in pairs({
        ["]m"] = { "goto_next_start", "@function.outer" },
        ["]]"] = { "goto_next_start", "@class.outer" },
        ["]M"] = { "goto_next_end", "@function.outer" },
        ["]["] = { "goto_next_end", "@class.outer" },
        ["[m"] = { "goto_previous_start", "@function.outer" },
        ["[["] = { "goto_previous_start", "@class.outer" },
        ["[M"] = { "goto_previous_end", "@function.outer" },
        ["[]"] = { "goto_previous_end", "@class.outer" },
      }) do
        vim.keymap.set(
          { "n", "x", "o" },
          lhs,
          move(unpack(args)),
          { desc = args[1] .. " " .. args[2] }
        )
      end
    end,
  },

  { "HiPhish/rainbow-delimiters.nvim", lazy = false },
}
