return {
	{
		"craftzdog/solarized-osaka.nvim",
		config = function()
			require("solarized-osaka").setup({
				transparent = true,
				dim_inactive = false,
				styles = {
					sidebars = "transparent",
					floats = "transparent",
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
	},

	-- {
	-- 	"folke/tokyonight.nvim",
	-- 	config = function()
	-- 		require("tokyonight").setup({
	-- 			transparent = true,
	-- 			style = "storm",
	-- 			styles = {
	-- 				sidebars = "transparent",
	-- 				floats = "transparent",
	-- 			},
	-- 			on_highlights = function(hl, c)
	-- 				local prompt = "#2d3149"
	-- 				hl.TelescopeBorder = {
	-- 					fg = "#2d3149",
	-- 				}
	-- 				hl.TelescopePromptBorder = {
	-- 					fg = prompt,
	-- 				}
	-- 				hl.TelescopePromptTitle = {
	-- 					fg = "#808080",
	-- 				}
	-- 				hl.TelescopePreviewTitle = {
	-- 					fg = "#808080",
	-- 				}
	-- 			end,
	-- 		})
	-- 	end,
	-- },
}
