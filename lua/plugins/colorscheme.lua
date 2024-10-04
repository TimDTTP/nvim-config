return {
  'sainnhe/sonokai',
  lazy = false,
  priority = 1000,
  config = function()
    -- Example config in lua
    vim.g.sonokai_enable_italic = true
    vim.g.sonokai_style = 'shusia'

    -- Load the colorscheme
    vim.cmd.colorscheme('sonokai')
  end
}
