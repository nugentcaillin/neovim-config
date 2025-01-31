vim.api.nvim_create_autocmd("FileType", {
	pattern = "html",
	command = "setlocal shiftwidth=2 tabstop=2",
})
vim.api.nvim_create_autocmd("FileType", {
	pattern = "css",
	command = "setlocal shiftwidth=2 tabstop=2",
})
vim.api.nvim_create_autocmd("FileType", {
	pattern = "javascript",
	command = "setlocal shiftwidth=2 tabstop=2",
})

vim.wo.breakindent = true
vim.opt.breakindentopt = {'shift:2'}
