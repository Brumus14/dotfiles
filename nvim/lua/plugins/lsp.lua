return {
    {
        "williamboman/mason.nvim",
        opts = {
            ui = {
                icons = {
                    package_installed = "✓",
                    package_pending = "➜",
                    package_uninstalled = "✗",
                },
            },
        },
    },
    {
        "williamboman/mason-lspconfig.nvim",
        opts = {
            ensure_installed = {
                "texlab",
                "clangd",
                "marksman",
                "rust_analyzer",
                "lua_ls",
                "taplo",
                "bashls",
                "vimls",
            },
        },
    },
    {
        "neovim/nvim-lspconfig",
    },
}
