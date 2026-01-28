return {
{
  "akinsho/toggleterm.nvim",
  version = "*",
  config = function()
    require("toggleterm").setup {
      size = 20,
      shading_factor = 2,
      direction = "horizontal",
      autochdir = true,
    }
  end,
}
}
