local luasnip = require "luasnip"

-- Extender la funcionalidad de filetypes
luasnip.filetype_extend("html", { "htmldjango" })
luasnip.filetype_extend("htmldjango", { "html" })
