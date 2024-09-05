-- load defaults i.e lua_lsp
require("nvchad.configs.lspconfig").defaults()

local lspconfig = require "lspconfig"

-- EXAMPLE
local servers = { "html", "cssls" }
local nvlsp = require "nvchad.configs.lspconfig"

-- lsps with default config
for _, lsp in ipairs(servers) do
  lspconfig[lsp].setup {
    on_attach = nvlsp.on_attach,
    on_init = nvlsp.on_init,
    capabilities = nvlsp.capabilities,
  }
end

-- configuring single server, example: typescript
-- lspconfig.tsserver.setup {
--   on_attach = nvlsp.on_attach,
--   on_init = nvlsp.on_init,
--   capabilities = nvlsp.capabilities,
-- }

lspconfig.pylsp.setup({
	on_attach = nvlsp.on_attach,
	capabilities = nvlsp.capabilities,
	on_init = nvlsp.on_init,
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
