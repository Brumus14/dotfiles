return {
    "folke/which-key.nvim",
    event = "VeryLazy",
    init = function()
        vim.o.timeout = true
        vim.o.timeoutlen = 300

        local wk = require("which-key")

        wk.setup({
            icons = {
                mappings = false,
            },
        })
    end,
    config = function()
        local wk = require("which-key")

        wk.add({
            { "<leader>b", desc = "Pick buffer" },
            { "<leader>c", desc = "Pick buffer to close" },
            { "<leader>d", desc = "Show line diagnostics" },
            { "<leader>q", desc = "Session" },
            { "<leader>qS", desc = "Select session" },
            { "<leader>qd", desc = "Disable session saving" },
            { "<leader>ql", desc = "Load previous session" },
            { "<leader>qs", desc = "Load current directory session" },
        })
    end,
}
