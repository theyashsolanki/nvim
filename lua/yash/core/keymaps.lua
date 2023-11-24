-- general keymaps
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

-- compile c/c++
vim.keymap.set("n", "<leader>c+", function()
	local current_file = tostring(vim.fn.expand("%"))
	if string.match(current_file, "%.cpp$") or string.match(current_file, "%.cxx$") then
		vim.cmd("!g++ --debug %")
	end
	if string.match(current_file, "%.c$") then
		vim.cmd("!gcc --debug %")
	end
end)

-- auto format
vim.keymap.set({ "n", "v" }, "<leader>fm", function()
	require("conform").format()
end)

-- nvim tree
vim.keymap.set("n", "<C-n>", ":NvimTreeToggle<CR>")

-- dap
vim.keymap.set("n", "<leader>db", ":DapToggleBreakpoint<CR>")
vim.keymap.set("n", "<leader>dr", ":DapContinue<CR>")

-- lsp keymaps
vim.keymap.set("n", "K", ":Lspsaga hover_doc<CR>")
vim.keymap.set("n", "gD", " :Lspsaga peek_definition<CR>")
vim.keymap.set("n", "<leader>ra", ":Lspsaga rename<CR>")
vim.keymap.set("n", "<leader>d", ":Lspsaga show_line_diagnostics<CR>")
vim.keymap.set("n", "<leader>D", ":Lspsaga show_cursor_diagnostics<CR>")
vim.keymap.set("n", "<leader>[d", ":Lspsaga diagnostic_jump_prev<CR>")
vim.keymap.set("n", "<leader>]d", ":Lspsaga diagnostic_jump_next<CR>")
vim.keymap.set("n", "<leader>pr", ":Lspsaga rename ++project<CR>")
vim.keymap.set("n", "<leader>ic", ":Telescope lsp_incoming_calls<CR>")
vim.keymap.set("n", "<leader>oc", ":Telescope lsp_outgoing_calls<CR>")
