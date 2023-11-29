return {
	"lukas-reineke/indent-blankline.nvim",
	version = "2.20.7",
	config = function()
		require("indent_blankline").setup({
			indentLine_enabled = 1,
			filetype_exclude = {
				"help",
				"terminal",
				"lazy",
				"lspinfo",
				"TelescopePrompt",
				"TelescopeResults",
				"mason",
				"",
			},
			buftype_exclude = { "terminal" },
			show_trailing_blankline_indent = false,
			show_first_indent_level = false,
			show_current_context = true,
			show_current_context_start = false,
		})
	end,
}
