-- OPTIONS
vim.g.mapleader = ' '
vim.g.maplocalleader = "\\"

vim.opt.number = true
vim.opt.relativenumber = true

vim.opt.splitbelow = true
vim.opt.splitright = true

vim.opt.wrap = false

vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = false

vim.opt.clipboard = "unnamedplus"

vim.opt.scrolloff = 8

vim.opt.virtualedit = "block"

vim.opt.ignorecase = true

vim.opt.termguicolors = true

vim.opt.foldcolumn = '1'
vim.opt.foldlevel = 99
vim.opt.foldlevelstart = 99
vim.opt.foldenable = true


-- Expand tabs for haskell files
vim.api.nvim_create_autocmd("FileType", {
	pattern = "haskell",
	callback = function()
		vim.opt_local.expandtab = true
	end,
})


