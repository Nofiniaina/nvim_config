return {
  {
    "williamboman/mason.nvim",
    config = function()
      require("mason").setup({
        ui = {
          icons = {
            package_installed   = "✔", -- green check
            package_pending     = "⟳", -- blue spinner / arrow
            package_uninstalled = "✖", -- red cross
          },
        }
      })
    end
  },
  {
    "neovim/nvim-lspconfig"
  }
}
