vim.api.nvim_set_keymap("n", "<leader><Space>", ":Oil<CR>", { noremap = true })

vim.keymap.set("n", "K", require("hover").hover, { desc = "hover.nvim" })

vim.keymap.set("n", "<leader>k", ":wincmd k<CR>")
vim.keymap.set("n", "<leader>j", ":wincmd j<CR>")
vim.keymap.set("n", "<leader>h", ":wincmd h<CR>")
vim.keymap.set("n", "<leader>l", ":wincmd l<CR>")

-- used to be <C-i>
vim.keymap.set("n", "<leader>i", "<Cmd>nohlsearch|diffupdate|normal! <C-L><CR>")

vim.api.nvim_set_keymap("n", "<leader>b", ":BufferLinePick<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<leader>c", ":BufferLinePickClose<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<leader>d", ":lua vim.diagnostic.open_float()<CR>", { noremap = true, silent = true })

-- vim.keymap.set({ "n" }, "<C-k>", function()
--     require("lsp_signature").toggle_float_win()
-- end, { silent = true, noremap = true, desc = "toggle signature" })

-- vim.keymap.set({ "n" }, "<Leader>k", function()
--     vim.lsp.buf.signature_help()
-- end, { silent = true, noremap = true, desc = "toggle signature" })

vim.keymap.set("n", "zR", require("ufo").openAllFolds)
vim.keymap.set("n", "zM", require("ufo").closeAllFolds)

vim.keymap.set("n", "<leader>qs", function()
    require("persistence").load()
end)
vim.keymap.set("n", "<leader>qS", function()
    require("persistence").select()
end)
vim.keymap.set("n", "<leader>ql", function()
    require("persistence").load({ last = true })
end)
vim.keymap.set("n", "<leader>qd", function()
    require("persistence").stop()
end)

vim.keymap.set("n", "<C-/>", ":ToggleTerm dir=" .. vim.g.nvim_opened_dir .. "<CR>")

local builtin = require("telescope.builtin")
vim.keymap.set("n", "<leader>ff", builtin.find_files, { desc = "Telescope find files" })
vim.keymap.set("n", "<leader>fg", builtin.live_grep, { desc = "Telescope live grep" })
vim.keymap.set("n", "<leader>fb", builtin.buffers, { desc = "Telescope buffers" })
vim.keymap.set("n", "<leader>fh", builtin.help_tags, { desc = "Telescope help tags" })
