return {
	"CRAG666/code_runner.nvim",
	opts = {
		mode = "toggleterm",
		startinsert = true,
		float = {
			border = "rounded",
			blend = 15,
		},
		filetype = {
			cpp = "cd $dir && g++ -std=c++20 $fileName -o $fileNameWithoutExt && clear && $dir/$fileNameWithoutExt",
		},
	},
}
