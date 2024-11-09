vim.api.nvim_set_keymap("n", "<C-Space>", ":Oil<CR>", { noremap = true })

vim.keymap.set("n", "K", require("hover").hover, { desc = "hover.nvim" })

vim.keymap.set("n", "<C-k>", ":wincmd k<CR>")
vim.keymap.set("n", "<C-j>", ":wincmd j<CR>")
vim.keymap.set("n", "<C-h>", ":wincmd h<CR>")
vim.keymap.set("n", "<C-l>", ":wincmd l<CR>")

vim.keymap.set("n", "<C-i>", "<Cmd>nohlsearch|diffupdate|normal! <C-L><CR>")

vim.api.nvim_set_keymap("n", "<leader>b", ":BufferLinePick<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<leader>c", ":BufferLinePickClose<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<leader>d", ":lua vim.diagnostic.open_float()<CR>", { noremap = true, silent = true })

-- vim.keymap.set({ "n" }, "<C-k>", function()
--     require("lsp_signature").toggle_float_win()
-- end, { silent = true, noremap = true, desc = "toggle signature" })

-- vim.keymap.set({ "n" }, "<Leader>k", function()
--     vim.lsp.buf.signature_help()
-- end, { silent = true, noremap = true, desc = "toggle signature" })
