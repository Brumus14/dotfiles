-- return {
--     "ray-x/lsp_signature.nvim",
--     event = "InsertEnter",
--     opts = {
--         bind = true,
--         hint_enable = true,
--         hint_prefix = "🖋️ ",
--         floating_window = true,
--         handler_opts = {
--             border = "rounded",
--         },
--         max_width = 80,
--         floating_window_above_cur_line = true,
--     },
--     config = function(_, opts)
--         require("lsp_signature").setup(opts)
--     end,
-- }

return {
    "ray-x/lsp_signature.nvim",
    opts = {
        hint_enable = false,
    },
    config = function(_, opts)
        require("lsp_signature").setup(opts)
    end,
}
