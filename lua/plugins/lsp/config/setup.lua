local util = require("lspconfig.util")
local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities.textDocument.completion.completionItem.snippetSupport = true
capabilities.textDocument.completion.completionItem.resolveSupport = {
	properties = {
		"documentation",
		"detail",
		"additionalTextEdits",
	},
}
-- Setup language servers.
local lspconfig = require("lspconfig")
local servers = {
	"html",
	"cssls",
	"tailwindcss",
	"jsonls",
	"bashls",
	"pyright",
	"jdtls",
}
-- lspconfig["html"].setup({
-- 	capabilities = capabilities,
-- 	filetypes = { "html", "htmldjango", "javascript", "javascriptreact" },
-- 	-- root_dir = util.root_pattern("package.json", "html"),
-- })
lspconfig["emmet_language_server"].setup({
	capabilities = capabilities,
	filetypes = { "javascript", "javascriptreact", "javascript.jsx", "typescriptreact" },
	-- root_dir = util.root_pattern("package.json", "html"),
})
lspconfig["tsserver"].setup({
	capabilities = capabilities,
	filetypes = {
		"javascript",
		"javascriptreact",
		"javascript.jsx",
		"typescript",
		"typescriptreact",
		"typescript.tsx",
	},
	disable_formatting = true,
})
for _, lsp in ipairs(servers) do
	lspconfig[lsp].setup({
		capabilities = capabilities,
	})
end
lspconfig["gopls"].setup({
	capabilities = capabilities,
	cmd = { "gopls" },
	filetypes = { "go", "gomod", "gowork", "gotmpl" },
	root_dir = util.root_pattern("go.work", "go.mod", ".git"),
	settings = {
		gopls = {
			-- completionUnimported = true,
			usePlaceholders = true,
			analyses = {
				unusedparams = true,
			},
		},
	},
})
lspconfig["lua_ls"].setup({
	capabilities = capabilities,
	settings = {
		Lua = {
			diagnostics = {
				globals = { "vim" },
			},
			completion = {
				callSnippet = "Replace",
			},
			workspace = {
				library = {
					[vim.fn.expand("$VIMRUNTIME/lua")] = true,
					[vim.fn.stdpath("config") .. "/lua"] = true,
				},
			},
		},
	},
})
lspconfig["clangd"].setup({
	capabilities = capabilities,
	cmd = {
		"clangd",
		"--offset-encoding=utf-16",
		"--inlay-hints",
		"--background-index",
		"--clang-tidy",
		"--suggest-missing-includes",
		"--all-scopes-completion",
	},
})
