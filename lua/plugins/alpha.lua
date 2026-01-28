
return {
  {
    "goolord/alpha-nvim",
    event = "VimEnter",
    dependencies = {
      "nvim-mini/mini.icons",
      "nvim-lua/plenary.nvim",
    },
    config = function()
      require("mini.icons").setup({})

      local alpha = require("alpha")
      local startify = require("alpha.themes.startify")
      alpha.setup(startify.config)
    end,
  },
}
