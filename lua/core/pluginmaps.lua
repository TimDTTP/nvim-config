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

-- Formats code
vim.api.nvim_create_user_command("Format", function(args)
	local range = nil
	if args.count ~= -1 then
		local end_line = vim.api.nvim_buf_get_lines(0, args.line2 - 1, args.line2, true)[1]
		range = {
			start = { args.line1, 0 },
			["end"] = { args.line2, end_line:len() },
		}
	end
	require("conform").format({ async = true, lsp_format = "fallback", range = range })
end, { range = true })

vim.keymap.set("n", "<C-f>", "<cmd>Format<CR>", { desc = "Format code" })

-- Oil.nvim
vim.keymap.set("n", "-", "<CMD>Oil<CR>", { desc = "Open parent directory" })
