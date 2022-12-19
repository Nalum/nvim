---------------------
-- Custom Mappings --
---------------------

-- Move to the window below
vim.keymap.set("n", "<C-j>", "<C-w>j")
-- Move to the window above
vim.keymap.set("n", "<C-k>", "<C-w>k")
-- Move to the window on the left
vim.keymap.set("n", "<C-h>", "<C-w>h")
-- Move to the window on the right
vim.keymap.set("n", "<C-l>", "<C-w>l")

-- vim-go mappings
-- Go to next error
vim.keymap.set("n", "<C-n>", ":cnext<CR>")
-- Go to previous error
vim.keymap.set("n", "<C-m>", ":cprevious<CR>")
-- Close quickfix list
-- vim.keymap.set("n", "<C-j>", "<C-w>j")
