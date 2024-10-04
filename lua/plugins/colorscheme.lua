return {
	"rebelot/kanagawa.nvim",
	lazy = false,
	priority = 1000,
	config = function()
		require("kanagawa").setup({
			theme = "wave",
			background = {
				dark = "wave",
			},
		})
		-- Load the colorscheme
		vim.cmd.colorscheme("kanagawa")
	end,
}
