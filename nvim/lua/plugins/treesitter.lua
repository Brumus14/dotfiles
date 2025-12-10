return {
    "nvim-treesitter/nvim-treesitter",
    lazy = false,
    build = ":TSUpdate",
    config = function()
        local treesitter = require("nvim-treesitter.configs")

        treesitter.setup({
            ensure_installed = {
                "c",
                "lua",
                "vim",
                "glsl",
                "markdown",
                "python",
                "cpp",
                "css",
                "vimdoc",
                "yaml",
                "toml",
            },
            highlight = {
                enable = true,
            },
        })
    end,
}
