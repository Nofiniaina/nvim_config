return {
  {
    "nvim-treesitter/nvim-treesitter",
    branch = 'master',
    lazy = false,
    build = ":TSUpdate",
    config = function()
      local configs = require("nvim-treesitter.configs")

      configs.setup({
        ensure_installed = {
          "bash",
          "c",
          "css",
          "lua",
          "javascript",
          "typescript",
          "tsx",
          "python",
          "rust",
          "html",
          "json",
          "markdown",
          "markdown_inline",
          "yaml",
          "java",
          "dot",
          "sql",
          "php",
          "twig"
        },
        highlight = { enable = true },
        indent = { enable = true }

      })
    end
  }
}
