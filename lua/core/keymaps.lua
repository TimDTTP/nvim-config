-- set leader key
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Disable the spacebar key's default behavior in Normal and Visual modes
vim.keymap.set({ "n", "v" }, "<Space>", "<Nop>", { silent = true })

-- For conciseness
local opts = { noremap = true, silent = true }

-- back to explorer
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex, { desc = "Return to explorer", noremap = true, silent = true })

-- move select up/down
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv", opts)
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv", opts)

-- keeps cursor in same place when jumping
vim.keymap.set("n", "<C-d>", "<C-d>zz", opts)
vim.keymap.set("n", "<C-u>", "<C-u>zz", opts)

-- keep cursor in middle while searching
vim.keymap.set("n", "n", "nzzzv", opts)
vim.keymap.set("n", "N", "Nzzzv", opts)

-- just dont go here
vim.keymap.set("n", "Q", "<nop>", opts)

-- to fix issues with visual block & code runner
vim.keymap.set({ "n", "i", "v" }, "<C-c>", "<Esc>", opts)

-- Keep last yanked when pasting
vim.keymap.set("v", "p", '"_dP', opts)
