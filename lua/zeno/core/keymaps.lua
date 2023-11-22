vim.keymap.set("n", "x", '"_x')
vim.keymap.set("v", "D", '"_d')

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")

vim.keymap.set("i", "<C-h>", "<Left>")
vim.keymap.set("i", "<C-l>", "<Right>")
vim.keymap.set("i", "<C-j>", "<Down>")
vim.keymap.set("i", "<C-k>", "<Up>")

vim.keymap.set("n", "n", "")

vim.keymap.set("n", "<ESC>", ":nohl<CR>")

-- nvim tree
vim.keymap.set("n", "<C-n>", ":NvimTreeToggle<CR>")
