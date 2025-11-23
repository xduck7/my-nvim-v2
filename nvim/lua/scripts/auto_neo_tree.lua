
vim.api.nvim_create_autocmd("VimEnter", {
  callback = function()
    if vim.bo.filetype == "" and vim.fn.empty(vim.fn.expand("%")) == 1 then
      vim.cmd("Neotree toggle")
    end
  end,
})
