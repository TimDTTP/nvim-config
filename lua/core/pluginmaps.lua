-- Code runner
-- Runs code
vim.keymap.set("n", "<C-n>", vim.cmd.RunCode, { desc = "Runs code runner" })

-- Opens lazygit
local Terminal = require("toggleterm.terminal").Terminal
local lazygit = Terminal:new({
	cmd = "lazygit",
	hidden = true,
	direction = "float",
	float_opts = {
		width = 170,
		height = 40,
	},
})

function _lazygit_toggle()
	lazygit:toggle()
end

vim.api.nvim_set_keymap(
	"n",
	"<leader>g",
	"<cmd>lua _lazygit_toggle()<CR>",
	{ desc = "Opens lazygit", noremap = true, silent = true }
)
