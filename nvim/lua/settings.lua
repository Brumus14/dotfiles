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

vim.g.mapleader = " "

vim.api.nvim_create_autocmd("BufWritePre", {
    pattern = "*",
    callback = function(args)
        require("conform").format({ bufnr = args.buf })
    end,
})

vim.o.undofile = true
vim.o.undodir = vim.fn.expand("~/.local/share/nvim/undo")
vim.o.undolevels = 1000
vim.o.undoreload = 10000

vim.api.nvim_create_autocmd({ "BufRead", "BufNewFile" }, {
    pattern = "*.vert,*.frag",
    command = "set filetype=glsl",
})

vim.diagnostic.config({
    update_in_insert = false,
    severity_sort = true,
    -- virtual_text = true,
})

vim.api.nvim_create_autocmd("InsertEnter", {
    callback = function()
        vim.diagnostic.disable(0)
    end,
})

vim.api.nvim_create_autocmd("InsertLeave", {
    callback = function()
        vim.diagnostic.enable(0)
    end,
})
