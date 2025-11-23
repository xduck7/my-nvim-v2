local map = vim.keymap.set

map("n", "<S-h>", function()
  vim.cmd("Neotree focus")
end, { desc = "Focus Neo-tree" })

map("n", "<S-l>", "<C-w>p", { desc = "Focus previous window" })


map('n', '<leader>q', ':wq<CR>')
map('n', '<leader>w', ':w<CR>')
map('n', '<Tab>', ':BufferLineCycleNext<CR>')
map('n', '<leader><Tab>', ':BufferLineCyclePrev<CR>')
map('n', '<leader>m', ':Markview Toggle<CR>', { desc = "Toggle Markview preview" })

map("n", "<Leader>gr", ":OpenInGHRepo <CR>", { silent = true, noremap = true })

map("n", "<Leader>gf", ":OpenInGHFile <CR>", { silent = true, noremap = true })
map("v", "<Leader>gf", ":OpenInGHFileLines <CR>", { silent = true, noremap = true })

map("n", "<leader>rc", function()
  require("neoranger").toggleFloat()
end, { desc = "Open ranger" })

map("n", "<leader>rr", function()
  require("neoranger").toggleFloat({ cwd = vim.fn.expand("%:p:h") })
end, { desc = "Ranger in file dir" })
