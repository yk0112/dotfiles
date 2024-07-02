return {

  {
    "stevearc/conform.nvim",
  },
  {
    "nvimtools/none-ls.nvim",
    event = "VeryLazy",
    opts = function()
      return require "configs.null-ls"
    end,
  },
  {
    "neovim/nvim-lspconfig",
    config = function()
      require("nvchad.configs.lspconfig").defaults()
      require "configs.lspconfig"
    end,
  },
  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
        "lua-language-server",
        "stylua",
        "html-lsp",
        "css-lsp",
        "prettier",
        "gopls",
        "clangd",
        "clang-format",
        "pyright",
        "black",
        "typescript-language-server",
        "gofumpt",
        "rust-analyzer",
      },
    },
  },
  {
    "rust-lang/rust.vim",
    ft = "rust",
    init = function()
      vim.g.rustfmt_autosave = 1
    end,
  },
  {
    "simrat39/rust-tools.nvim",
    ft = "rust",
    dependencies = "neovim/nvim-lspconfig",
    opts = function()
      return require "configs.rust-tools"
    end,
    config = function(_, opts)
      require("rust-tools").setup(opts)
    end,
  },
  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      ensure_installed = {
        "vim",
        "lua",
        "vimdoc",
        "html",
        "css",
        "go",
        "python",
        "typescript",
      },
    },
  },
  { "glepnir/dashboard-nvim" },
  --within ~/.config/nvim/lua/custom/plugins.lua
  -- Install ToggleTerm plugin here
  {
    "akinsho/toggleterm.nvim",
    cmd = { "ToggleTerm" },
    config = function()
      require "configs.toggleterm"
    end,
  },
  {
    "numToStr/Comment.nvim",
    keys = {
      { "<leader>cl", mode = "n" },
      { "<leader>cl", mode = "v" },
    },
    config = function()
      require("Comment").setup {
        line_mapping = "<leader>cc",
        toggler = {
          line = "<leader>cl",
        },
        opleader = {
          line = "<leader>cl",
        },
      }
    end,
  },
}
