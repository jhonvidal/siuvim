local on_attach = require("nvchad.configs.lspconfig").on_attach
local capabilities = require("nvchad.configs.lspconfig").capabilities
local on_init = require("nvchad.configs.lspconfig").on_init

local lspconfig = require("lspconfig")
local servers = { "cssls", "tsserver", "clangd", "lua_ls" }

for _, lsp in ipairs(servers) do
	lspconfig[lsp].setup({
		on_attach = on_attach,
		capabilities = capabilities,
	})
end

lspconfig.html.setup({
	on_attach = on_attach,
	capabilities = capabilities,
	on_init = on_init,
	filetypes = { "html", "htmldjango" },
	-- Otras configuraciones si es necesario
})

lspconfig.pylsp.setup({
	on_attach = on_attach,
	capabilities = capabilities,
	on_init = on_init,
	settings = {
		pylsp = {
			configurationSources = { "flake8" },
			plugins = {
				flake8 = {
					enabled = true,
					maxLineLength = 100,
				},
				pyflakes = { enabled = false },
				pycodestyle = { enabled = false },
				pylint = { enabled = false },
				yapf = { enabled = false },
				pyls_mypy = { enabled = true, live_mode = false },
			},
		},
	},
})
