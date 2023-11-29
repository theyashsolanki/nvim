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
	{
		"folke/neodev.nvim",
		config = function()
			require("neodev").setup({
				library = {
					enabled = true,
					runtime = true,
					types = true,
					plugins = true,
				},
				setup_jsonls = true,
				lspconfig = true,
				pathStrict = true,
			})
		end,
	},

	{ import = "plugins.lsp" },
	{ import = "plugins.dap" },
	{ import = "plugins.treesitter" },
	{ import = "plugins.cmp" },
	{ import = "plugins.lualine" },
	{ import = "plugins" },
}, { install = { colorscheme = { "solarized-osaka" } } })
