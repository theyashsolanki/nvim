return {
	"craftzdog/solarized-osaka.nvim",
	config = function()
		require("solarized-osaka").setup({
			transparent = true,

			--- You can override specific color groups to use other groups or a hex color
			--- function will be called with a ColorScheme table
			---@param colors ColorScheme
			on_colors = function(colors) end,

			on_highlights = function(hl, c) end,
		})
		vim.cmd.colorscheme("solarized-osaka")
	end,
}
