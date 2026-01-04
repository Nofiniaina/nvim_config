return {
  {
    "nvim-treesitter/nvim-treesitter",
    branch = 'master',
    lazy = false,
    event = { "BufReadPost", "BufNewFile" },
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
          "twig",
          "rust",
          "go"
        },
        incremental_selection = { enable = true },
        highlight = { enable = true },
        indent = { enable = true },
      })
    end
  }
}
