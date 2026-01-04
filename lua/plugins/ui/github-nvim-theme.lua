return {
  'projekt0n/github-nvim-theme',
  name = 'github-theme',
  lazy = false,
  prioarity = 1000,
  config = function()
    require('github-theme').setup({})
    vim.cmd('colorscheme github_dark')
  end,
}
