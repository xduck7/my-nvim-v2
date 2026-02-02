return
{
  'lewis6991/gitsigns.nvim',
  config = function()
    local gs = require('gitsigns')
    gs.setup({
      signs = {
					add='+',
					change='~',
					delete='-',
					topdelete='‾',
					changedelete='~-',
					untracked='┆',
				},
      signcolumn = true,
    })
  end
}
