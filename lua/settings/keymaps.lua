vim.g.mapleader = " "

-- Lazy-load Telescope via des fonctions
vim.keymap.set('n', '<leader>ff', function()
  require('telescope.builtin').find_files()
end, { desc = 'Telescope find files' })

vim.keymap.set('n', '<leader>fg', function()
  require('telescope.builtin').live_grep()
end, { desc = 'Telescope live grep' })

vim.keymap.set('n', '<leader>fb', function()
  require('telescope.builtin').buffers()
end, { desc = 'Telescope buffers' })

vim.keymap.set('n', '<leader>fh', function()
  require('telescope.builtin').help_tags()
end, { desc = 'Telescope help tags' })

-- Ouvrir / Fermer Neo-tree
vim.keymap.set('n', '<leader>e', ':Neotree toggle filesystem left<CR>', { desc = "Toggle Neo-tree" })

-- Tape ,, rapidement → devient <> avec curseur au milieu
vim.keymap.set("i", ",,", "<><Left>", { desc = "Insérer paire <>" })
