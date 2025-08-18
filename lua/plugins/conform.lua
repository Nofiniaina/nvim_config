return {
  'stevearc/conform.nvim',
  opts = {},
  config = function()
    require("conform").setup({
      formatters_by_ft = {
        lua = { "stylua"},
        python = { "isort", "black" },
        rust = { "rustfmt" },
        javascript = { "prettierd", "prettier" },
      },
      lsp_format = "fallback",
      format_on_save = {
        -- These options will be passed to conform.format()
        timeout_ms = 500,
        lsp_format = "fallback",
      },
    })
  end,
}
