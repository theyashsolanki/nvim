return {
	"hrsh7th/nvim-cmp",
	event = "InsertEnter",
	dependencies = {
		"hrsh7th/cmp-buffer", -- source for text in buffer
		"hrsh7th/cmp-path", -- source for file system paths
		"onsails/lspkind.nvim",
		"L3MON4D3/LuaSnip", -- snippet engine
		"saadparwaiz1/cmp_luasnip", -- for autocompletion
		"rafamadriz/friendly-snippets", -- useful snippets
		{
			"windwp/nvim-autopairs",
			opts = {
				fast_wrap = {},
				disable_filetype = { "TelescopePrompt", "vim" },
			},
			config = function(_, opts)
				require("nvim-autopairs").setup(opts)

				-- setup cmp for autopairs
				local cmp_autopairs = require("nvim-autopairs.completion.cmp")
				require("cmp").event:on("confirm_done", cmp_autopairs.on_confirm_done())
			end,
		},
	},

	config = function()
		local cmp = require("cmp")
		local luasnip = require("luasnip")
		local lspkind = require("lspkind")

		-- loads vscode style snippets from installed plugins (e.g. friendly-snippets)
		require("luasnip.loaders.from_vscode").lazy_load()

		cmp.setup({
			window = {
				completion = {
					border = "rounded",
					scrollbar = false,
					winhighlight = "Normal:CmpNormal,CursorLine:Visual,FloatBorder:CmpBorder,Search:None",
				},
				documentation = cmp.config.window.bordered({
					winhighlight = "FloatBorder:FloatBorder",
				}),
			},

			snippet = { -- configure how nvim-cmp interacts with snippet engine
				expand = function(args)
					luasnip.lsp_expand(args.body)
				end,
			},

			completion = {
				completeopt = "menu,menuone",
			},
			confirm_opts = {
				behavior = require("cmp").ConfirmBehavior.Replace,
				select = false,
			},
			mapping = {
				-- disable  tab
				["<Tab>"] = function(callback)
					callback()
				end,

				["<S-Tab>"] = function(callback)
					callback()
				end,

				["<C-p>"] = require("cmp").mapping.select_prev_item({ behavior = require("cmp").SelectBehavior.Select }),
				["<C-n>"] = require("cmp").mapping.select_next_item({ behavior = require("cmp").SelectBehavior.Select }),
				["<C-k>"] = require("cmp").mapping.select_prev_item({ behavior = require("cmp").SelectBehavior.Select }),
				["<C-j>"] = require("cmp").mapping.select_next_item({ behavior = require("cmp").SelectBehavior.Select }),
				["<CR>"] = require("cmp").mapping.confirm({ select = false }),
				["<C-e>"] = require("cmp").mapping({
					i = require("cmp").mapping.abort(),
					c = require("cmp").mapping.close(),
				}),
				["<Up>"] = require("cmp").mapping.select_prev_item({ behavior = require("cmp").SelectBehavior.Select }),
				["<Down>"] = require("cmp").mapping.select_next_item({
					behavior = require("cmp").SelectBehavior.Select,
				}),
				["<C-Space>"] = require("cmp").mapping(require("cmp").mapping.complete(), { "i", "c" }),
			},
			-- sources for autocompletion
			sources = cmp.config.sources({
				{ name = "nvim_lsp" },
				{ name = "luasnip" }, -- snippets
				{ name = "buffer" }, -- text within current buffer
				{ name = "path" }, -- file system paths
			}),
			-- configure lspkind for vs-code like pictograms in completion menu
			-- formatting = {
			-- 	format = lspkind.cmp_format({
			-- 		maxwidth = 50,
			-- 		ellipsis_char = "...",
			-- 	}),
			-- },
		})
	end,
}
