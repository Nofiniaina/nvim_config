vim.lsp.config["emmet_ls"] = {
  cmd = { "emmet-ls", "--stdio" },
  filetypes = {
    "html",
    "css",
    "scss",
    "javascriptreact",
    "typescriptreact",
    "twig",
  },
}


vim.lsp.enable({
  "lua_ls",
  "html",
  "emmet_ls",
  "cssls",
  "tailwindcss",
  "ts_ls",
  "pyright",
  "intelephense",
  "twiggy_language_server",
  "jsonls",
  "yamlls",
  "rust_analyzer",
  "gopls"
})
