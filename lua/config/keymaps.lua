local map = vim.keymap.set

-- LSP mappings
map("n", "K", vim.lsp.buf.hover, { desc = "Hover Documentation" })
map("n", "<leader>rn", vim.lsp.buf.rename, { desc = "Rename Symbol" })
map("n", "<leader>qf", vim.lsp.buf.code_action, { desc = "LSP Code Action" })
map("n", "<leader>cd", vim.diagnostic.open_float, { desc = "Line Diagnostics" })
map("n", "gd", vim.lsp.buf.definition, { desc = "Go to Definition" })
vim.keymap.set("n", "gi", function()
  Snacks.picker.lsp_implementations({
  })
end, { desc = "Find implementations (Snacks picker)" })
vim.keymap.set("n", "gr", function()
  Snacks.picker.lsp_references({
  })
end, { desc = "Find references (Snacks picker)" })

-- ToggleTerm
map("n", "<C-t>", "<cmd>ToggleTerm<cr>", { desc = "Toggle terminal" })
map("t", "<C-t>", "<cmd>ToggleTerm<cr>", { desc = "Toggle terminal" })

-- Neo-tree
map("n", "<leader>e", "<cmd>Neotree toggle<CR>", { desc = "Neo-tree" })

-- Window navigation
local function set_terminal_keymaps()
  local opts = {buffer = 0, noremap = true, silent = true}
  vim.keymap.set('t', '<esc>', [[<C-\><C-n>]], opts)
end

vim.api.nvim_create_autocmd("TermOpen", {
  pattern = "term://*toggleterm#*",
  callback = set_terminal_keymaps,
})
map("n", "<S-h>", "<C-w>W", { desc = "Focus next window (cycle)" })
map("n", "<S-l>", "<C-w>w", { desc = "Focus previous window (cycle)" })

-- File operations
map('n', '<leader>q', ':wq<CR>')
map('n', '<leader>w', ':w<CR>')

-- Buffer navigation
map('n', '<Tab>', ':BufferLineCycleNext<CR>')
map('n', '<leader><Tab>', ':BufferLineCyclePrev<CR>')
map('n', '<leader>bd', '<cmd>bdelete<cr>', { desc = "Delete current buffer" })

-- Markview
map('n', '<leader>m', ':Markview Toggle<CR>', { desc = "Toggle Markview preview" })

-- Comment
map("n", "<leader>c", function()
  return vim.v.count == 0
    and "<Plug>(comment_toggle_linewise_current)"
    or "<Plug>(comment_toggle_linewise_count)"
end, { expr = true, desc = "Toggle comment (supports count)" })

-- Ranger
map("n", "<leader>rc", function()
  require("neoranger").toggleFloat()
end, { desc = "Open ranger" })
map("n", "<leader>rr", function()
  require("neoranger").toggleFloat({ cwd = vim.fn.expand("%:p:h") })
end, { desc = "Ranger in file dir" })

-- LazyGit
map("n", "<leader>lg", "<cmd>LazyGit<cr>", { desc = "LazyGit" })

-- Seeker
map("n", "<leader>ff", "<cmd>Seeker<CR>", { desc = "Find files (Seeker)" })
map("n", "<leader><leader>", "<cmd>Seeker<CR>", { desc = "Find files (Seeker)" })
map("n", "<leader>fg", "<cmd>Seeker grep<CR>", { desc = "Grep (Seeker)" })
map("n", "<leader>/", "<cmd>Seeker grep<CR>", { desc = "Grep (Seeker)" })
map("n", "<leader>fb", "<cmd>ls<CR>", { desc = "Buffers (builtin :ls)" })
map("n", "<leader>fh", "<cmd>help<Space>", { desc = "Help (builtin :help …)" })

-- Git blame
map("n", "<leader>gb", "<cmd>BlameToggle<CR>", { desc = "Git blame: toggle (window)" })
map("n", "<leader>gB", "<cmd>BlameToggle virtual<CR>", { desc = "Git blame: toggle (virtual)" })

-- Neominimap mappings
map("n", "<leader>nm", "<cmd>Neominimap Toggle<cr>", { desc = "Toggle global minimap" })
map("n", "<leader>nr", "<cmd>Neominimap Refresh<cr>", { desc = "Refresh global minimap" })


-- Gitsigns navigation и preview (buffer-local, но глобально)
local gs = require('gitsigns')
map('n', ']h', function() gs.next_hunk() end, { desc = 'Next git hunk' })
map('n', '[h', function() gs.prev_hunk() end, { desc = 'Prev git hunk' })
map('n', '<leader>hp', gs.preview_hunk, { desc = 'Preview git hunk' })
map({'n','v'}, '<leader>hs', ':Gitsigns stage_hunk<CR>', { desc = 'Stage git hunk' })
map('n', '<leader>hu', gs.undo_stage_hunk, { desc = 'Undo stage git hunk' })
