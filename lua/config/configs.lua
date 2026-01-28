
print(" ")

vim.wo.number = true
vim.wo.relativenumber = true

vim.opt.mouse = "a"
vim.opt.mousefocus = true

vim.opt.clipboard = "unnamedplus"

vim.opt.shiftwidth = 4
vim.opt.tabstop = 4
vim.opt.softtabstop = 4

vim.opt.scrolloff = 15 

vim.opt.sidescrolloff= 8
vim.opt.wrap = true 
vim.opt.termguicolors = true

vim.opt.fillchars = {
	vert = "│",
	fold = " ",
	eob = " ",
	msgsep = "ˉ",
	foldopen = "▾",
	foldsep = "│",
	foldclose = "▸"
}
