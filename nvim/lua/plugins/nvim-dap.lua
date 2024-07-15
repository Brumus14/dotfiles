return {
    "mfussenegger/nvim-dap",
    -- dependencies = {
    --     "rcarriga/nvim-dap-ui",
    --     {
    --         "theHamsta/nvim-dap-virtual-text",
    --         opts = {},
    --     },
    -- },
    opts = {
        adapters = {
            codelldb = {
                type = "server",
                port = "${port}",
                executable = {
                    command = "/usr/bin/codelldb",
                    args = { "--port", "${port}" },
                },
            },
        },
        configurations = {
            rust = {
                name = "Rust debug",
                type = "codelldb",
                request = "launch",
                program = function()
                    return vim.fn.input("Path to executable: ", vim.fn.getcwd() .. "/target/debug/", "file")
                end,
                cwd = "${workspaceFolder}",
                stopOnEntry = true,
            },
        },
    },
    config = function() end,
}
