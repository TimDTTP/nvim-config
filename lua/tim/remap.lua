-- INFO: Personal vim keymaps

-- back to explorer
vim.keymap.set('n', '<leader>pv', vim.cmd.Ex, { desc = 'Return to explorer' })

-- move select up/down
vim.keymap.set('v', 'J', ":m '>+1<CR>gv=gv")
vim.keymap.set('v', 'K', ":m '<-2<CR>gv=gv")

-- keeps cursor in same place when jumping
vim.keymap.set('n', '<C-d>', '<C-d>zz')
vim.keymap.set('n', '<C-u>', '<C-u>zz')

-- keep cursor in middle while searching
vim.keymap.set('n', 'n', 'nzzzv')
vim.keymap.set('n', 'N', 'Nzzzv')

-- just dont go here
vim.keymap.set('n', 'Q', '<nop>')

-- to fix issues with visual block & code runner
vim.keymap.set({ 'n', 'i', 'v' }, '<C-c>', '<Esc>')

-- INFO: Plugin custom keymaps

-- Code runner
vim.keymap.set('n', '<C-n>', vim.cmd.RunCode, { desc = 'Runs code runner' })

-- Toggle term
vim.keymap.set('n', '<C-/>', vim.cmd.ToggleTerm, { desc = 'Opens ToggleTerminal' })

-- Harpoon
local harpoon = require 'harpoon'
vim.keymap.set('n', '<leader>a', function()
  harpoon:list():append()
end, { desc = 'Appends file to Harpoon' })
vim.keymap.set('n', '<C-e>', function()
  harpoon.ui:toggle_quick_menu(harpoon:list())
end, { desc = 'Toggle Harpoon menu' })

vim.keymap.set('n', '<C-h>', function()
  harpoon:list():select(1)
end)
vim.keymap.set('n', '<C-j>', function()
  harpoon:list():select(2)
end)
vim.keymap.set('n', '<C-k>', function()
  harpoon:list():select(3)
end)
vim.keymap.set('n', '<C-l>', function()
  harpoon:list():select(4)
end)
