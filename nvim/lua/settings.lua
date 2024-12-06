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

vim.opt.signcolumn = "yes:1"

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
    virtual_text = false,
})

-- vim.api.nvim_create_autocmd("InsertEnter", {
--     callback = function()
--         vim.diagnostic.disable(0)
--     end,
-- })
--
-- vim.api.nvim_create_autocmd("InsertLeave", {
--     callback = function()
--         vim.diagnostic.enable(0)
--     end,
-- })

vim.api.nvim_create_autocmd({ "BufEnter", "BufDelete" }, {
    callback = function()
        local buffer_count = #vim.fn.getbufinfo({ buflisted = true })
        vim.opt.showtabline = buffer_count > 1 and 2 or 0
    end,
})

vim.o.foldcolumn = "0"
vim.o.foldlevel = 99
vim.o.foldlevel = 99
vim.o.foldlevelstart = 99
vim.o.foldenable = true

vim.g.nvim_opened_dir = vim.fn.expand("%:p:h")
