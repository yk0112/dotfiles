require("lint").linters_by_ft = {
	event = { "BufReadPre", "BufNewFile" },

	linters_by_ft = {
		cpp = { "cpplint" },
		python = { "flake8" },
	},

	--[[ 	vim.api.nvim_create_autocmd({ "BufEnter", "BufWritePost", "InsertLeave" }, {
		group = vim.api.nvim_create_augroup("lint", { clear = true }),
		callback = function()
			lint.try_lint()
		end,
	}), ]]
}
