return {
    {
        "lukas-reineke/indent-blankline.nvim",
        main = "ibl",
        opts = {
            scope = {
                show_start = false,
                show_end = false,
            },
        },
    },
    {
        "nvim-mini/mini.icons",
        opts = {},
    },
    {
        "nvim-lualine/lualine.nvim",
        dependencies = { "nvim-tree/nvim-web-devicons" },
        opts = {},
    },
    {
        "rcarriga/nvim-notify",
        opts = {},
    },
    {
        "goolord/alpha-nvim",
        config = function()
            require("alpha").setup(require("alpha.themes.dashboard").config)
        end,
    },
    -- {
    --     "rcarriga/nvim-notify",
    --     config = function()
    --         local notify = require("notify")
    --
    --         notify.setup({
    --             render = "wrapped-compact",
    --             stages = "fade_in_slide_out",
    --             minimum_width = 30,
    --             top_down = false,
    --             timeout = 2000,
    --         })
    --
    --         vim.notify = notify
    --     end,
    -- },
}
