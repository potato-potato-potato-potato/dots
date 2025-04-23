vim.o.number = true
vim.o.relativenumber = true

vim.o.tabstop = 8
vim.o.shiftwidth = 8
vim.o.expandtab = true

vim.o.showmode = false

vim.diagnostic.config({
	virtual_text = true,
	signs = true,
	underline = true,
	update_in_insert = false,
	severity_sort = true,
})
