vim.api.nvim_set_keymap("n", "<C-Space>", ":Oil<CR>", { noremap = true })

vim.keymap.set("n", "K", require("hover").hover, { desc = "hover.nvim" })
