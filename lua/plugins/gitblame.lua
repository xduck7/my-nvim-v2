return {
  "FabijanZulj/blame.nvim",
  cmd = { "BlameToggle" },
  opts = {
    blame_options = { "-w" },
    focus_blame = true,
  },
  config = function(_, opts)
    require("blame").setup(opts)
  end,
}
