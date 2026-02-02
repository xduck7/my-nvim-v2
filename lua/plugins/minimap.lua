return {
  "Isrothy/neominimap.nvim",
  version = "v3.x.x",
  lazy = false,
  init = function()
    vim.opt.wrap = false
    vim.opt.sidescrolloff = 36
    vim.g.neominimap = {
      auto_enable = true,
      layout = "float",
	  float = {
		 minimap_width = 8,
		},
    }
  end,
}
