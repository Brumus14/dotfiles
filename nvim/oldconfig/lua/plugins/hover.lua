return {
    "lewis6991/hover.nvim",
    opts = {
        init = function()
            require("hover.providers.lsp")
        end,
        preview_opts = {
            border = "rounded",
        },
        preview_window = false,
        title = false,
        mouse_providers = {},
    },
}
