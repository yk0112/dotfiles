local builtin = require('telescope.builtin')
-- <leader> == space
-- vim.keymap.set(mode, binding, 何を呼び出すか, option)
vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})
vim.keymap.set('n', '<leader>e', ':NvimTreeToggle<cr>', {})

-- useful bindings
vim.keymap.set('i', 'jk', '<esc>', {})
vim.keymap.set('i', 'kj', '<esc>', {})

--vim.keymap.set('n', '<leader>tn', ':tabnew<cr>', {})
vim.keymap.set('n', '<leader>tc', ':tabclose<cr>', {})
vim.keymap.set("n", "<C-n>", ":bnext<Return>", {})
vim.keymap.set("n", "<C-p>", ":bprevious<Return>", {})

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


