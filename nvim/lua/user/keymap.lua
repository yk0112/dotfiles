local builtin = require("telescope.builtin")
local conform = require("conform")
local lint = require("lint")
-- <leader> == space
-- vim.keymap.set(mode, binding, 何を呼び出すか, option)
vim.keymap.set("n", "<leader>ff", builtin.find_files, {})
vim.keymap.set("n", "<leader>gg", builtin.git_files, {})
vim.keymap.set("n", "<leader>fg", builtin.live_grep, {})
vim.keymap.set("n", "<leader>fb", builtin.buffers, {})
vim.keymap.set("n", "<leader>fh", builtin.help_tags, {})
vim.keymap.set("n", "<leader>e", ":NvimTreeToggle<cr>", {})

-- useful bindings
vim.keymap.set("i", "jk", "<esc>", {})
vim.keymap.set("i", "kj", "<esc>", {})

vim.keymap.set("n", "<leader>tn", ":tabnew<cr>", {})
vim.keymap.set("n", "<leader>tc", ":tabclose<cr>", {})
vim.keymap.set("n", "<C-n>", ":bnext<Return>", {})
vim.keymap.set("n", "<C-p>", ":bprevious<Return>", {})

--ウィンドウの分割

vim.keymap.set("n", "<C-w>v", ":vsp<cr>", {})
vim.keymap.set("n", "<C-w>s", ":sp<cr>", {})

--ウィンドウの移動
vim.keymap.set("n", "<C-h>", "<C-w>h", {})
vim.keymap.set("n", "<C-j>", "<C-w>j", {})
vim.keymap.set("n", "<C-k>", "<C-w>k", {})
vim.keymap.set("n", "<C-l>", "<C-w>l", {})

--ウィンドウの調整
vim.keymap.set("n", "<M-j>", ":resize -2<cr>", {})
vim.keymap.set("n", "<M-k>", ":resize +2<cr>", {})
vim.keymap.set("n", "<M-h>", ":vertical resize -2<cr>", {})
vim.keymap.set("n", "<M-l>", ":vertical resize +2<cr>", {})

--検索語のハイライトを消す
vim.keymap.set("n", "<ESC><ESC>", ":noh<cr>")

--ファイルを閉じる
vim.keymap.set("n", "<C-x>", ":bd<cr>")

-- formatterの設定
vim.keymap.set({ "n", "v" }, "<leader>mp", function()
	conform.format({
		lsp_fallback = true,
		async = false,
		timeout_ms = 500,
	})
end, { desc = "Format file or range (in visual mode)" })

-- lintterの設定
local lint_augroup = vim.api.nvim_create_augroup("lint", { clear = true })

vim.api.nvim_create_autocmd({ "BufEnter", "BufWritePost", "InsertLeave" }, {
	group = lint_augroup,
	callback = function()
		lint.try_lint()
	end,
})

vim.keymap.set("n", "<leader>l", function()
	lint.try_lint()
end, { desc = "Trigger linting for current file" })

-- clang-formatの設定
-- vim.keymap.set("n", "<leader>f", ":ClangFormat<cr>")
--  vim.keymap.set("n", "<leader>cf", ":ClangFormatAutoToggle<cr>")
