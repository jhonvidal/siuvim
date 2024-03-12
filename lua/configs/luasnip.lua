local luasnip = require("luasnip")

local M = {}

M.config = function()
	local existing_config = luasnip.config

	luasnip.filetype_extend("html", { "htmldjango" })
	luasnip.filetype_extend("htmldjango", { "html" })
	luasnip.setup(vim.tbl_deep_extend("force", existing_config, luasnip.config))
end

return M
