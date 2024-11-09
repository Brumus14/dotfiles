return {
    "folke/which-key.nvim",
    event = "VeryLazy",
    init = function()
        vim.o.timeout = true
        vim.o.timeoutlen = 300
    end,
    config = function()
        local wk = require("which-key")

        wk.register({
            ["<leader>"] = {
                b = { name = "Pick Buffer" },
                d = { name = "Show Line Diagnostics" },
            },
        })
    end,
}
