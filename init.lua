require("core.keymaps") -- personal keymaps
require("core.options") -- general options preferences

-- set up Lazy package manager
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
	local lazyrepo = "https://github.com/folke/lazy.nvim.git"
	local out = vim.fn.system({ "git", "clone", "--filter=blob:none", "--branch=stable", lazyrepo, lazypath })
	if vim.v.shell_error ~= 0 then
		error("Error cloning lazy.nvim:\n" .. out)
	end
end
vim.opt.rtp:prepend(lazypath)

-- setup plugins
require("lazy").setup({
	require("plugins.autocomplete"),
	require("plugins.coderunner"),
	require("plugins.colortheme"),
	require("plugins.conform"),
	require("plugins.flash"),
	require("plugins.gitsigns"),
	require("plugins.harpoon"),
	require("plugins.indentline"),
	require("plugins.lsp"),
	require("plugins.lualine"),
	require("plugins.oil"),
	require("plugins.smartcolumn"),
	require("plugins.telescope"),
	require("plugins.toggleterm"),
	require("plugins.treesitter"),
	require("plugins.misc"),
})

require("core.pluginmaps")
