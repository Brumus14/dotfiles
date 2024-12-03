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
                b = { name = "Pick buffer" },
                c = { name = "Pick buffer to close" },
                d = { name = "Show line diagnostics" },
                q = {
                    s = { name = "Load current directory session" },
                    S = { name = "Select session" },
                    l = { name = "Load previous session" },
                    d = { name = "Disable session saving" },
                },
            },
        })
    end,
}
