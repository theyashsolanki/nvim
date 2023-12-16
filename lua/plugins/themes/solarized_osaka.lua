return {
	"craftzdog/solarized-osaka.nvim",
	config = function()
		require("solarized-osaka").setup({
			transparent = true,
			dim_inactive = false,
			styles = {
				floats = "transparent",
				sidebars = "transparent",
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
	end,
}
