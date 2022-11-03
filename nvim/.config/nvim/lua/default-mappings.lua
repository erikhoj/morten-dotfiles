local opts = { noremap = true, silent = true }

-- save all open buffers
vim.keymap.set("n", "<leader>z", ":wa<CR>", opts)
-- close active buffer
vim.keymap.set("n", "<leader>q", ":Bdelete<CR>", opts)

-- Fugitive bindings
vim.keymap.set("n", "<leader>gs", ":G<CR>", opts)
vim.keymap.set("n", "<leader>gh", ":diffget //2<CR>", opts)
vim.keymap.set("n", "<leader>gl", ":diffget //3<CR>", opts)

-- Move around to buffers
vim.keymap.set("n", "<C-h>", "<C-w>h", opts)
vim.keymap.set("n", "<C-j>", "<C-w>j", opts)
vim.keymap.set("n", "<C-k>", "<C-w>k", opts)
vim.keymap.set("n", "<C-l>", "<C-w>l", opts)

-- Resize buffers
vim.keymap.set("n", "<C-Left>", ":vertical resize -3<CR>", opts)
vim.keymap.set("n", "<C-Right>", ":vertical resize +3<CR>", opts)
vim.keymap.set("n", "<C-Up>", ":resize -3<CR>", opts)
vim.keymap.set("n", "<C-Down>", ":resize +3<CR>", opts)

-- Move buffer
vim.keymap.set("n", "<S-l>", ":BufferLineCycleNext<CR>", opts)
vim.keymap.set("n", "<S-h>", ":BufferLineCyclePrev<CR>", opts)

-- Copilot
-- vim.keymap.set("i", "<C-e>", 'copilot#Accept()', { silent = true, expr = true, script = true })
-- vim.g.copilot_no_tab_map = true

-- change current word (like ciw) but repeatable with dot . for the same next word
vim.api.nvim_set_keymap("n", "<Leader>rs", ":let @/=expand('<cword>')<cr>cgn", { silent = true })
