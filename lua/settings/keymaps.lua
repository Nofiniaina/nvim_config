local km = vim.keymap

vim.g.mapleader = " "

km.set('n', '<leader>e', ':Neotree toggle filesystem left<CR>', {
  desc = "Toggle Neo-tree"
})

km.set("i", ",,", "<><Left>", {
  desc = "Insert <> pair"
})

-- Normal-mode commands
km.set('n', '<A-j>', ':MoveLine(1)<CR>', { desc = "Move line down" })
km.set('n', '<A-k>', ':MoveLine(-1)<CR>', { desc = "Move line up" })
km.set('n', '<A-h>', ':MoveHChar(-1)<CR>', { desc = "Move character left" })
km.set('n', '<A-l>', ':MoveHChar(1)<CR>', { desc = "Move character right" })
km.set('n', '<leader>wf', ':MoveWord(1)<CR>', { desc = "Move word forward" })
km.set('n', '<leader>wb', ':MoveWord(-1)<CR>', { desc = "Move word backward" })

-- Visual-mode commands
km.set('v', '<A-j>', ':MoveBlock(1)<CR>', { desc = "Move selection down" })
km.set('v', '<A-k>', ':MoveBlock(-1)<CR>', { desc = "Move selection up" })
km.set('v', '<A-h>', ':MoveHBlock(-1)<CR>', { desc = "Move selection left" })
km.set('v', '<A-l>', ':MoveHBlock(1)<CR>', { desc = "Move selection right" })
