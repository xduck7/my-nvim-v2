return {
  {
    "Kaikacy/Lemons.nvim",
    version = "*",
    lazy = false,
    priority = 1000,
    config = function()
      require("lemons").setup({})
      vim.cmd.colorscheme("lemons")
    end,
  },
}

