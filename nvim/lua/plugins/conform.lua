return {
    "stevearc/conform.nvim",
    opts = {
        formatters_by_ft = {
            lua = { "stylua" },
            rust = { "rustfmt" },
            c = { "clang_format" },
            cpp = { "clang_format" },
        },
        formatters = {
            stylua = {
                prepend_args = { "--indent-type", "Spaces" },
            },
            clang_format = {
                prepend_args = {
                    "--style={IndentWidth: 4, AllowShortFunctionsOnASingleLine: None, SortIncludes: false}",
                },
            },
        },
    },
}
