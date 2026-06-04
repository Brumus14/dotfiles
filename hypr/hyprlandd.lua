hl.bind("ALT+Return", hl.dsp.exec_cmd("kitty"))
hl.bind("ALT+mouse:272", hl.dsp.window.drag())
hl.bind("ALT+mouse:273", hl.dsp.window.resize())

hl.config({
    debug = {
        disable_logs = false,
        enable_stdout_logs = true,
    },

    misc = {
        -- disable_hyprland_logo=true,
        disable_splash_rendering = true,
        force_default_wallpaper = 0,
    },
})

hl.bind("ALT+i", function()
    hl.dispatch(hl.dsp.window.fullscreen({ action = "unset" }))
    hl.dispatch(hl.dsp.window.float({ action = "disable" }))
end)
hl.bind("ALT+o", function()
    hl.dispatch(hl.dsp.window.fullscreen({ action = "unset" }))
    hl.dispatch(hl.dsp.window.float({ action = "enable" }))
end)
hl.bind("ALT+p", hl.dsp.window.fullscreen({ action = "set" }))

hl.bind("ALT+g", hl.dsp.group.toggle())
