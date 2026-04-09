local icons = require "icons"
return {
  'nvim-lualine/lualine.nvim',
  dependencies = { 'nvim-tree/nvim-web-devicons' },
  config = function()
    require('lualine').setup({
      options = {
        theme = 'codedark'
      },
      sections = {
        lualine_b = {
          { "branch", icon = icons.branch },
          {
            "diff",
            symbols = { added = "[+] ", modified = "[~] ", removed = "[-] " },
            colored = true,
          }
        },
        lualine_x = {
          {
            "diagnostics",
            sources = { "nvim_lsp" },
            symbols = { error = icons.error, warn = icons.warn, info = icons.info, hint = icons.hint },
          },
          { "filetype", icon_only = true },
          { "encoding" },
        },
      }
    })
  end,
}
