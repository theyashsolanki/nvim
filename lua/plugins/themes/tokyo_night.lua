return {
	"folke/tokyonight.nvim",
	config = function()
		require("tokyonight").setup({
			transparent = true,
			style = "storm",
			styles = {
				comments = { italic = true },
				keywords = { italic = true },
				sidebars = "transparent",
				floats = "transparent",
			},
			on_highlights = function(hl, c) -- c
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
				hl.LineNr = {
					fg = hl.CursorLineNr.fg,
				}
				hl.DiagnosticUnnecessary = {
					fg = hl.CursorLineNr.fg,
				}
				-- hl.Exception = {
				-- 	fg = c.red,
				-- }
			end,
		})
	end,
}
