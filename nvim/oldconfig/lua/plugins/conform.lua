return {
    "stevearc/conform.nvim",
    opts = {
        formatters_by_ft = {
            lua = { "stylua" },
            rust = { "rustfmt" },
            c = { "clang_format" },
            cpp = { "clang_format" },
            javascript = { "biome" },
            java = { "clang_format" },
            tex = { "latexindent" },
            -- asm = { "asmfmt" },
            go = { "goimports", "gofmt" },
            zig = { "zigfmt" },
            r = { "air" },
            html = { "prettier" },
            css = { "prettier" },
            python = { "black" },
        },
        formatters = {
            stylua = {
                prepend_args = { "--indent-type", "Spaces" },
            },
            -- clang_format = {
            --     prepend_args = {
            --         "--style=file:/home/brumus/.config/.clang-format",
            --     },
            -- },
            air = {
                env = {
                    STYLER_STYLE = "/home/brumus/.config/style.r",
                },
            },
        },
    },
}
