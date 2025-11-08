return {
    "rcarriga/nvim-notify",
    opts = {},
    config = function()
        local notify = require("notify")

        notify.setup({
            render = "wrapped-compact",
            stages = "fade_in_slide_out",
            minimum_width = 30,
            top_down = false,
            timeout = 2000,
        })

        vim.notify = notify
    end,
}
