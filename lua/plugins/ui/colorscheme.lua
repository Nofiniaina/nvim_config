return {
  "folke/tokyonight.nvim",
  name = "tokyonight",
  lazy = false,
  priority = 1000,
  config = function()
    require("tokyonight").setup({
      style = "night", -- "storm" | "night" | "moon" | "day"
      transparent = false,
      terminal_colors = true,
      styles = {
        comments = { italic = true },
        keywords = { italic = true },
        functions = {},
        variables = {},
        sidebars = "dark",
        floats = "dark",
      },
      sidebars = { "neo-tree", "qf", "help", "terminal" },
      dim_inactive = true,
      lualine_bold = true,
    })
    vim.cmd("colorscheme tokyonight-night")
  end,
}
