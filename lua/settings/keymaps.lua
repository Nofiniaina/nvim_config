vim.g.mapleader = " "

-- Ouvrir / Fermer Neo-tree
vim.keymap.set('n', '<leader>e', ':Neotree toggle filesystem left<CR>', { desc = "Toggle Neo-tree" })

-- Tape ,, rapidement → devient <> avec curseur au milieu
vim.keymap.set("i", ",,", "<><Left>", { desc = "Insérer paire <>" })
