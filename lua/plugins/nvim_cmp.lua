return {
	"nvim-cmp",
	dependencies = {
		-- codeium
		{
			"Exafunction/codeium.nvim",
			cmd = "Codeium",
			build = ":Codeium Auth",
			opts = {},
		},
		{
			"hrsh7th/cmp-cmdline",
		},
	},
	---@param opts cmp.ConfigSchema
	opts = function(_, opts)
		table.insert(opts.sources, 1, {
			name = "codeium",
			group_index = 1,
			priority = 100,
		})
		-- Añade la fuente 'cmdline'
		table.insert(opts.sources, {
			name = "cmdline",
			group_index = 2,
			priority = 100,
		})

		local cmp_config = require("configs.cmp")
		cmp_config.setup_cmdline_cmp()
	end,
}
