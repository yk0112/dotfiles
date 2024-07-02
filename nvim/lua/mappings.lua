require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

-- useful bindings
map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")
map("i", "kj", "<ESC>")
map("n", "<c-\\>", ":ToggleTerm<Return>")
map("n", "<leader>e", ":NvimTreeToggle<cr>")

-- LSP hover
map("n", "K", "<cmd>lua vim.lsp.buf.hover()<CR>")
map("n", "<leader>f", "<cmd>lua vim.diagnostic.open_float({focusable=true})<CR>")

-- タブの移動
map("n", "<C-n>", ":bnext<Return>")
map("n", "<C-p>", ":bprevious<Return>")

--ウィンドウの分割
map("n", "<C-w>v", ":vsp<cr>")
map("n", "<C-w>s", ":sp<cr>")

--ウィンドウの移動
map("n", "<C-h>", "<C-w>h")
map("n", "<C-j>", "<C-w>j")
map("n", "<C-k>", "<C-w>k")
map("n", "<C-l>", "<C-w>l")

--ファイルを閉じる
map("n", "<C-x>", ":bd<cr>")
