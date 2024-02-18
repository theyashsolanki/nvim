return {
	"folke/tokyonight.nvim",
	config = function()
		local colorscheme = require("core.colorscheme")
		require("tokyonight").setup({
			transparent = colorscheme.transparent,
			style = colorscheme.style,
			styles = {
				comments = { italic = true },
				keywords = { italic = true },
				sidebars = colorscheme.sidebars,
				floats = colorscheme.floats,
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
