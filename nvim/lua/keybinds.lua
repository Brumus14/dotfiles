vim.api.nvim_set_keymap("n", "<C-Space>", ":Oil<CR>", { noremap = true })

vim.keymap.set("n", "K", require("hover").hover, { desc = "hover.nvim" })

vim.keymap.set("n", "<C-k>", ":wincmd k<CR>")
vim.keymap.set("n", "<C-j>", ":wincmd j<CR>")
vim.keymap.set("n", "<C-h>", ":wincmd h<CR>")
vim.keymap.set("n", "<C-l>", ":wincmd l<CR>")

vim.keymap.set("n", "<C-i>", "<Cmd>nohlsearch|diffupdate|normal! <C-L><CR>")
