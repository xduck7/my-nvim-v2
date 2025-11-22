local map = vim.keymap.set

map("n", "<S-h>", function()
  vim.cmd("Neotree focus")
end, { desc = "Focus Neo-tree" })

map("n", "<S-l>", "<C-w>p", { desc = "Focus previous window" })


map('n', '<leader>q', ':q<CR>')
map('n', '<leader>w', ':w<CR>')
map('n', '<Tab>', ':BufferLineCycleNext<CR>')
map('n', '<leader><Tab>', ':BufferLineCyclePrev<CR>')
map('n', '<leader>m', ':Markview Toggle<CR>', { desc = "Toggle Markview preview" })
