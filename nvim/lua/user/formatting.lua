require("conform").setup({
	event = { "BufReadPre", "BufNewFile" },
	formatters_by_ft = {
		lua = { "stylua" },
		python = { "isort", "black" },
		cpp = { "clang_format" },
	},

	format_on_save = {
		lap_fallback = true,
		async = false,
		timeout_ms = 500,
	},
})
