return {
  {
    'nvim-telescope/telescope.nvim',
    tag = 'v0.2.0',
    dependencies = {
      'nvim-lua/plenary.nvim',
      'nvim-telescope/telescope-file-browser.nvim',
    },
    keys = {
      { "gr",         "<cmd>Telescope lsp_references<CR>",         desc = "Symbol references" },
      { "gd",         "<cmd>Telescope lsp_definitions<CR>",        desc = "Symbol definitions" },

      { "<leader>ff", "<cmd>Telescope find_files<CR>",             desc = "Find files" },
      { "<leader>fF", "<cmd>Telescope find_files hidden=true<CR>", desc = "Find all files" },
      { "<leader>fh", "<cmd>Telescope help_tags<CR>",              desc = "Help tags" },
      { "<leader>fg", "<cmd>Telescope live_grep<CR>",              desc = "Live grep" },
      { "<leader>fb", "<cmd>Telescope buffers<CR>",                desc = "Find buffer" },
      { "<leader>fd", "<cmd>Telescope diagnostics<CR>",            desc = "Find diagnostics" },
      { "<leader>ft", "<cmd>Telescope treesitter<CR>",             desc = "Treesitter symbols" },
      { "<leader>fm", "<cmd>Telescope marks<CR>",                  desc = "Find marks" },
      { "<leader>fr", "<cmd>Telescope resume<CR>",                 desc = "Resume picker" },
      { "<leader>fR", "<cmd>Telescope registers<CR>",              desc = "Find registers" },
      { "<leader>fH", "<cmd>Telescope highlights<CR>",             desc = "Highlight groups" },
      { "<leader>fG", "<cmd>Telescope git_status<CR>",             desc = "Git status" },
      { "<leader>fo", "<cmd>Telescope vim_options<CR>",            desc = "Vim options" },
      { "<leader>fs", "<cmd>Telescope lsp_document_symbols<CR>",   desc = "Document symbols" },
      { "<leader>fS", "<cmd>Telescope lsp_workspace_symbols<CR>",  desc = "Workspace symbols" },

      {
        "<leader>fe",
        "<cmd>Telescope file_browser path=%:p:h select_buffer=true<CR>",
        desc = "File browser",
      },
    },

    config = function()
      require("telescope").setup({
        defaults = {
          prompt_prefix = "",
          selection_caret = "",
        },
        extensions = {
          file_browser = {
            hijack_netrw = true,
          },
        },
      })

      require("telescope").load_extension("file_browser")
    end,
  }
}
