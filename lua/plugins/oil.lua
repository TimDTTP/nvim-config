return {
	"stevearc/oil.nvim",
	opts = {
		default_file_explorer = true,
		skip_confirm_for_simple_edits = true,
		-- show dot files, hide git files
		view_options = {
			show_hidden = true,
			natural_order = true,
			is_always_hidden = function(name, _)
				return name == ".." or name == ".git"
			end,
		},
		float = {
			preview_split = "above",
		},
	},
	-- Optional dependencies
	dependencies = { { "echasnovski/mini.icons", opts = {} } },
}
