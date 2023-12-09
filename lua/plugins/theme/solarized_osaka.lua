return {
	"craftzdog/solarized-osaka.nvim",
	config = function()
		local transparency = require("plugins.theme.toggle_transparency")
		require("solarized-osaka").setup({
			transparent = transparency.transparent,
			dim_inactive = false,
			styles = {
				floats = transparency.style,
				sidebars = transparency.style,
			},
			--- You can override specific color groups to use other groups or a hex color
			--- function will be called with a ColorScheme table
			---@param colors ColorScheme
			on_colors = function(colors) end,
			on_highlights = function(hl, c)
				hl.Visual = {
					bg = "#2d3149",
					fg = "none",
				}
				hl.FloatBorder = {
					bg = "none",
					fg = c.blue,
				}
				hl.CmpDocumentationBorder = {
					bg = "none",
					fg = c.blue,
				}
			end,
		})
		vim.cmd("colorscheme solarized-osaka")
	end,
}
