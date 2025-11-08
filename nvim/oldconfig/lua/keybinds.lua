vim.api.nvim_set_keymap("n", "<leader>b", "<Cmd>Oil<CR>", { noremap = true })

vim.keymap.set("n", "K", require("hover").hover, { desc = "hover.nvim" })

-- vim.keymap.set("n", "<leader>k", "<Cmd>wincmd k<CR>")
-- vim.keymap.set("n", "<leader>j", "<Cmd>wincmd j<CR>")
-- vim.keymap.set("n", "<leader>h", "<Cmd>wincmd h<CR>")
-- vim.keymap.set("n", "<leader>l", "<Cmd>wincmd l<CR>")

-- used to be <C-i>
vim.keymap.set("n", "<leader>i", "<Cmd>nohlsearch|diffupdate|normal! <C-L><CR>")

-- vim.api.nvim_set_keymap("n", "<leader>b", "<Cmd>BufferLinePick<CR>", { noremap = true, silent = true })
-- vim.api.nvim_set_keymap("n", "<leader>c", "<Cmd>BufferLinePickClose<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<leader>d", "<Cmd>lua vim.diagnostic.open_float()<CR>", { noremap = true, silent = true })

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

vim.keymap.set("n", "<C-/>", "<Cmd>ToggleTerm dir=" .. vim.g.nvim_opened_dir .. "<CR>")

local builtin = require("telescope.builtin")
vim.keymap.set("n", "<leader>f", builtin.find_files, { desc = "Telescope find files" })
vim.keymap.set("n", "<leader>g", builtin.live_grep, { desc = "Telescope live grep" })
vim.keymap.set("n", "<leader><space>", builtin.buffers, { desc = "Telescope buffers" })

local ls = require("luasnip")
vim.keymap.set({ "i", "s" }, "<C-L>", function()
    ls.jump(1)
end, { silent = true })
vim.keymap.set({ "i", "s" }, "<C-J>", function()
    ls.jump(-1)
end, { silent = true })
