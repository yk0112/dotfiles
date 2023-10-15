local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
	vim.fn.system({
		"git",
		"clone",
		"--filter=blob:none",
		"https://github.com/folke/lazy.nvim.git",
		"--branch=stable", -- latest stable release
		lazypath,
	})
end
vim.opt.rtp:prepend(lazypath)

-- Example using a list of specs with the default options
vim.g.mapleader = " " -- Make sure to set `mapleader` before lazy so your mappings are correct

require("lazy").setup({
	"folke/which-key.nvim",
	-- { "EdenEast/nightfox.nvim" },
	{ "catppuccin/nvim", name = "catppuccin", priority = 1000 },
	{ "nvim-treesitter/nvim-treesitter" },
	{ "nvim-tree/nvim-tree.lua" },
	{ "nvim-telescope/telescope.nvim", tag = "0.1.2", dependencies = { "nvim-lua/plenary.nvim" } },
	{ "nvim-lualine/lualine.nvim" },
	{ "nvim-tree/nvim-web-devicons" },
	{
		"romgrk/barbar.nvim",
		dependencies = {
			"lewis6991/gitsigns.nvim", -- OPTIONAL: for git status
			"nvim-tree/nvim-web-devicons", -- OPTIONAL: for file icons
		},
		init = function()
			vim.g.barbar_auto_setup = false
		end,
		opts = {
			-- lazy.nvim will automatically call setup for you. put your options here, anything missing will use the default:
			-- animation = true,
			-- insert_at_start = true,
			-- …etc.
		},
		version = "^1.0.0", -- optional: only update when a new 1.x version is released
	},
	-- commnet out ---
	{ "numToStr/Comment.nvim" },
	-- dashbord --
	{ "glepnir/dashboard-nvim" },
	-- toggleterm --
	{ "akinsho/toggleterm.nvim", version = "*", config = true },
	{
		"folke/noice.nvim",
		event = "VeryLazy",
		opts = {
			-- add any options here
		},
		dependencies = {
			-- if you lazy-load any plugin below, make sure to add proper `module="..."` entries
			"MunifTanjim/nui.nvim",
			-- OPTIONAL:
			--   `nvim-notify` is only needed, if you want to use the notification view.
			--   If not available, we use `mini` as the fallback
			"rcarriga/nvim-notify",
		},
	},
	-- cmp plugin
	{ "hrsh7th/nvim-cmp" }, -- The completion plugin
	{ "hrsh7th/cmp-buffer" }, -- buffer completions
	{ "hrsh7th/cmp-path" }, -- path completions
	{ "hrsh7th/cmp-cmdline" }, -- cmdline completions
	{ "saadparwaiz1/cmp_luasnip" }, -- snippet completion

	-- Snippets
	{ "L3MON4D3/LuaSnip" }, --snippet engine
	{ "rafamadriz/friendly-snippets" }, -- a bunch of snippets to use

	--LSP
	{ "williamboman/mason.nvim" },
	{ "williamboman/mason-lspconfig.nvim" },
	{ "neovim/nvim-lspconfig" }, -- enable LSP
	{ "williamboman/nvim-lsp-installer" }, -- make easy to install LS

	-- formatter setting
	{ "stevearc/conform.nvim" },

	-- linter setting
	{ "mfussenegger/nvim-lint" },

	-- plugin for clnag-format
	{ "rhysd/vim-clang-format" },
	{ "kana/vim-operator-user" },
})
