return {
  {
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v3.x",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "MunifTanjim/nui.nvim",
      "nvim-tree/nvim-web-devicons",
    },
    lazy = false,
    config = function()
      require("neo-tree").setup({
        window = {
          width = 25,
        },
        default_component_configs = {
          git_status = {
            symbols = {
              added     = "A", -- VS Code
              modified  = "M",
              deleted   = "D",
              renamed   = "R",
              untracked = "U",
              ignored   = "I",
              unstaged  = "",
              staged    = "✓",
              conflict  = "",
            },
          },
        },
        filesystem = {
          filtered_items = {
            hide_dotfiles = false,
            hide_gitignored = false,
            hide_by_name = {
              ".git",
            }
          },
        },
        vim.api.nvim_set_hl(0, "NeoTreeGitIgnored",
          { fg = "#808080", italic = true }
        ) -- grey + italic
      })
    end
  }
}
