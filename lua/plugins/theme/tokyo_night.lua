return {
	"folke/tokyonight.nvim",
	config = function()
		require("tokyonight").setup({
			transparent = true,
			style = "dragon",
			styles = {
				sidebars = "transparent",
				floats = "transparent",
			},
			on_highlights = function(hl, c)
				local prompt = "#2d3149"
				hl.TelescopeBorder = {
					fg = "#2d3149",
				}
				hl.TelescopePromptBorder = {
					fg = prompt,
				}
				hl.TelescopePromptTitle = {
					fg = "#808080",
				}
				hl.TelescopePreviewTitle = {
					fg = "#808080",
				}
			end,
		})
		vim.cmd("colorscheme tokyonight")
	end,
}
