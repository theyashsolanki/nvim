local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
	vim.fn.system({
		"git",
		"clone",
		"--filter=blob:none",
		"https://github.com/folke/lazy.nvim.git",
		"--branch=stable", -- latest stable release
		lazypath,
	})
end
vim.opt.rtp:prepend(lazypath)
require("lazy").setup({
	{ import = "yash.plugins.lsp" },
	{ import = "yash.plugins.dap" },
	{ import = "yash.plugins.treesitter" },
	{ import = "yash.plugins.cmp" },
	{ import = "yash.plugins" },
}, { install = { colorscheme = { "solarized-osaka" } } })
