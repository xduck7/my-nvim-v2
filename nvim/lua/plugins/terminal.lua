return {
{
  "akinsho/toggleterm.nvim",
  version = "*",
  config = function()
    require("toggleterm").setup {
      size = 20,
      open_mapping = [[<c-\>]],
      shading_factor = 2,
      direction = "horizontal", -- horizontal/vertical/tab
      autochdir = true,
    }
  end,
}
}
