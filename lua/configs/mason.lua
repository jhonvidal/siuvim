
local nvchad_mason_config = require("nvchad.configs.mason")

-- Extender la configuración de ensure_installed
local custom_ensure_installed = {
  "lua-language-server",
  "stylua",
  "css-lsp",
  "html-lsp",
  "typescript-language-server",
  "deno",
  "prettier",
  "clangd",
  "clang-format",
  "shfmt",
  "black",
  "djlint",
  "python-lsp-server",
}

-- Combinar la configuración original con la personalizada
nvchad_mason_config.ensure_installed = vim.list_extend(nvchad_mason_config.ensure_installed or {}, custom_ensure_installed)

return nvchad_mason_config
