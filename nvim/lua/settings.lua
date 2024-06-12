vim.opt.cursorline = true
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.termguicolors = true
vim.opt.wrap = false
vim.opt.clipboard = "unnamedplus"

vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

vim.opt.showmode = false
vim.opt.cmdheight = 0

vim.cmd("colorscheme catppuccin-macchiato")

vim.api.nvim_create_autocmd("BufWritePre", {
	pattern = "*",
	callback = function(args)
		require("conform").format({ bufnr = args.buf })
	end,
})

vim.o.undofile = true
vim.o.undodir = vim.fn.expand("~/.config/nvim/undo")
vim.o.undolevels = 1000
vim.o.undoreload = 10000
