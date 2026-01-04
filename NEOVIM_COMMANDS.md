# Neovim Commands & Keymaps

This file lists the commands, key mappings, and plugin commands defined in the Neovim configuration.

**Mapleader**: Space
- Set in [lua/settings/keymaps.lua](lua/settings/keymaps.lua#L1)

**Global/Plugin Commands**
- `:ToggleTerm` — Toggle floating terminal (plugin: `akinsho/toggleterm.nvim`)
- `:Telescope <picker>` — Telescope pickers (plugin: `nvim-telescope/telescope.nvim`). Examples: `:Telescope find_files`, `:Telescope live_grep`, `:Telescope buffers`, `:Telescope diagnostics`, etc.
- `:Neotree toggle filesystem left` — Toggle Neo-tree (plugin: `neo-tree`)
- `:colorscheme github_dark` — Apply GitHub Dark theme (plugin: `projekt0n/github-nvim-theme`)
- `which-key` show — Show buffer-local keymaps via which-key (plugin: `folke/which-key.nvim`)

**Key mappings (mode, lhs → rhs) and source file**

- `vim.g.mapleader = " "` — set leader to Space
  - File: [lua/settings/keymaps.lua](lua/settings/keymaps.lua#L1)

- Normal: `<leader>e` → `:Neotree toggle filesystem left<CR>` — Toggle Neo-tree
  - File: [lua/settings/keymaps.lua](lua/settings/keymaps.lua#L3-L3)

- Insert: `,,` → `<><Left>` — Insert pair `<>` with cursor between
  - File: [lua/settings/keymaps.lua](lua/settings/keymaps.lua#L6-L7)

- Normal & Visual: `<leader>ca` → call `require("tiny-code-action").code_action()` — Trigger code action
  - File: [lua/config/code-actions.lua](lua/config/code-actions.lua#L1-L3)

- Normal (terminal plugin): `<leader>t` → `<cmd>ToggleTerm<cr>` — Toggle floating terminal
  - Also mapped in terminal mode (`mode = "t"`) for the same key
  - File: [lua/plugins/terminal/toggleterm.lua](lua/plugins/terminal/toggleterm.lua#L3-L6)

- Normal: `gr` → `<cmd>Telescope lsp_references<CR>` — Symbol references (Telescope)
  - File: [lua/plugins/navigation/telescope.lua](lua/plugins/navigation/telescope.lua#L5-L6)

- Normal: `gd` → `<cmd>Telescope lsp_definitions<CR>` — Symbol definitions (Telescope)
  - File: [lua/plugins/navigation/telescope.lua](lua/plugins/navigation/telescope.lua#L5-L6)

- Telescope `<leader>f*` prefixed mappings (all in one place):
  - `<leader>ff` → `:Telescope find_files` — Find files
  - `<leader>fF` → `:Telescope find_files hidden=true` — Find all files (including hidden)
  - `<leader>fh` → `:Telescope help_tags` — Help tags
  - `<leader>fg` → `:Telescope live_grep` — Live grep
  - `<leader>fb` → `:Telescope buffers` — Find buffer
  - `<leader>fd` → `:Telescope diagnostics` — Find diagnostics
  - `<leader>ft` → `:Telescope treesitter` — Treesitter symbols
  - `<leader>fm` → `:Telescope marks` — Find marks
  - `<leader>fr` → `:Telescope resume` — Resume picker
  - `<leader>fR` → `:Telescope registers` — Find registers
  - `<leader>fH` → `:Telescope highlights` — Highlight groups
  - `<leader>fG` → `:Telescope git_status` — Git status
  - `<leader>fo` → `:Telescope vim_options` — Vim options
  - `<leader>fs` → `:Telescope lsp_document_symbols` — Document symbols
  - `<leader>fS` → `:Telescope lsp_workspace_symbols` — Workspace symbols
  - `<leader>fe` → `:Telescope file_browser path=%:p:h select_buffer=true` — File browser
  - File: [lua/plugins/navigation/telescope.lua](lua/plugins/navigation/telescope.lua#L7-L27)

- Normal: `<leader>?` → show buffer-local keymaps (which-key)
  - File: [lua/plugins/ui/which-key.lua](lua/plugins/ui/which-key.lua#L9-L17)

