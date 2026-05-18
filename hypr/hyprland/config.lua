hl.config({
    animations = {
        enabled = false,
    },

    decoration = {
        blur = {
            enabled = false,
        },

        shadow = {
            enabled = false,
        },

        rounding = 0,
    },

    input = {
        kb_layout = "gb",
        repeat_rate = 25,
        repeat_delay = 300,

        touchpad = {
            disable_while_typing = false,
            natural_scroll = true,
            scroll_factor = 0.4,
        },
    },

    general = {
        border_size = 3,
        gaps_in = 3,
        gaps_out = 6,

        col = {
            inactive_border = "rgb(464646)",
            active_border = "rgb(5492a1)",
        },
    },

    dwindle = {
        -- preserve_split=true
        smart_split = true,
    },

    misc = {
        disable_hyprland_logo = true,
        disable_splash_rendering = true,
        middle_click_paste = false,
        mouse_move_enables_dpms = true,
        background_color = "rgb(2f2f2f)",
    },

    -- resize_corner
    cursor = {
        -- no_warps=true
        persistent_warps = true,
        inactive_timeout = 3,
    },
})
