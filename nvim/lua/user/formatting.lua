require("conform").setup({
	event = { "BufReadPre", "BufNewFile" },
	formatters_by_ft = {
		lua = { "stylua" },
		python = { "isort", "black" },
		cpp = { "clang_format" },
		rust = { "rustfmt" },
		typescript = { "prettier" },
		html = { "prettier" },
		css = { "prettier" },
		scss = { "prettier" },
		typescriptreact = { "prettier" },
		javascriptreact = { "prettier" },
		go = { "gofumpt" },
	},

	format_on_save = {
		lap_fallback = true,
		async = false,
		timeout_ms = 500,
	},

	vim.keymap.set({ "n", "v" }, "<leader>mp", function()
		require("conform").format({
			lsp_fallback = true,
			async = false,
			timeout_ms = 500,
		})
	end, { desc = "format file in visual mode" }),
})
