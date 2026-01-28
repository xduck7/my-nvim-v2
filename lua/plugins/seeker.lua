
return {
  "2KAbhishek/seeker.nvim",
  dependencies = {
    "folke/snacks.nvim",
    "nvim-tree/nvim-web-devicons",
  },
  config = function()
    require("seeker").setup({
    })
  end,
}
