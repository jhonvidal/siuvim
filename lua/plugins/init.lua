return {
	{
		"stevearc/conform.nvim",
		-- event = 'BufWritePre', -- uncomment for format on save
		opts = require("configs.conform"),
	},

	-- These are some examples, uncomment them if you want to see them work!
	{
		"neovim/nvim-lspconfig",
		config = function()
			require("configs.lspconfig")
		end,
	},

	{
		"williamboman/mason.nvim",
		cmd = { "Mason", "MasonInstall", "MasonInstallAll", "MasonUpdate" },
		opts = require("configs.mason"), -- Usamos la configuración extendida personalizada
		config = function(_, opts)
			require("mason").setup(opts)

			-- Instalar automáticamente los servidores y herramientas listadas en ensure_installed
			local mr = require("mason-registry")
			for _, tool in ipairs(opts.ensure_installed) do
				local p = mr.get_package(tool)
				if not p:is_installed() then
					p:install()
				end
			end
		end,
	},

	{
		"Exafunction/codeium.nvim",
		dependencies = {
			"nvim-lua/plenary.nvim",
			"hrsh7th/nvim-cmp",
		},
		config = function()
			require("codeium").setup({})
		end,
		event = "VeryLazy",
	},

	{
		"hrsh7th/nvim-cmp",
		event = "InsertEnter",
		opts = function(_, opts)
			-- Extiende las opciones predeterminadas de NvChad
			local cmp = require("cmp")
			opts.sources = cmp.config.sources(vim.list_extend(opts.sources, {
				{ name = "codeium" }, -- Añadir Codeium como fuente de completado
			}))
			return opts
		end,
	},

	-- {
	-- 	"nvim-treesitter/nvim-treesitter",
	-- 	opts = {
	-- 		ensure_installed = {
	-- 			"vim", "lua", "vimdoc",
	--      "html", "css"
	-- 		},
	-- 	},
	-- },
}
