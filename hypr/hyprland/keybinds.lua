local smw = hl.plugin.split_monitor_workspaces

-- Mouse binds
hl.bind("SUPER+mouse:272", hl.dsp.window.drag())
hl.bind("SUPER+mouse:273", hl.dsp.window.resize())

-- Move focus
hl.bind("SUPER+h", hl.dsp.focus({ direction = "l" }))
hl.bind("SUPER+j", hl.dsp.focus({ direction = "d" }))
hl.bind("SUPER+k", hl.dsp.focus({ direction = "u" }))
hl.bind("SUPER+l", hl.dsp.focus({ direction = "r" }))

-- Focus monitors
hl.bind("SUPER+9", hl.dsp.focus({ monitor = "l" }))
hl.bind("SUPER+SHIFT+9", hl.dsp.focus({ monitor = "l" }))
hl.bind("SUPER+0", hl.dsp.focus({ monitor = "r" }))
hl.bind("SUPER+SHIFT+0", hl.dsp.focus({ monitor = "r" }))

-- Toggle split
hl.bind("SUPER+u", hl.dsp.layout("togglesplit"))

-- Move window
hl.bind("SUPER+ALT+h", hl.dsp.window.swap({ direction = "l" }))
hl.bind("SUPER+ALT+j", hl.dsp.window.swap({ direction = "d" }))
hl.bind("SUPER+ALT+k", hl.dsp.window.swap({ direction = "u" }))
hl.bind("SUPER+ALT+l", hl.dsp.window.swap({ direction = "r" }))

-- Resize active window
hl.bind("SUPER+CTRL+h", hl.dsp.window.move({ direction = "l" }))
hl.bind("SUPER+CTRL+j", hl.dsp.window.move({ direction = "d" }))
hl.bind("SUPER+CTRL+k", hl.dsp.window.move({ direction = "u" }))
hl.bind("SUPER+CTRL+l", hl.dsp.window.move({ direction = "r" }))

-- Move window between monitors
-- bind=SUPER ALT,9,movewindow,mon:l silent
-- bind=SUPER ALT,0,movewindow,mon:r silent
hl.bind("SUPER+ALT+9", function()
    smw.change_monitor_silent("prev")
end)
hl.bind("SUPER+ALT+SHIFT+9", function()
    smw.change_monitor_silent("prev")
end)
hl.bind("SUPER+ALT+0", function()
    smw.change_monitor_silent("next")
end)
hl.bind("SUPER+ALT+SHIFT+0", function()
    smw.change_monitor_silent("next")
end)

-- Resize active window
hl.bind("SUPER+CTRL+ALT+h", hl.dsp.window.resize({ x = -20, y = 0, relative = true }))
hl.bind("SUPER+CTRL+ALT+j", hl.dsp.window.resize({ x = 0, y = 20, relative = true }))
hl.bind("SUPER+CTRL+ALT+k", hl.dsp.window.resize({ x = 0, y = -20, relative = true }))
hl.bind("SUPER+CTRL+ALT+l", hl.dsp.window.resize({ x = 20, y = 0, relative = true }))

-- Preselect direction
hl.bind("SUPER+SHIFT+h", hl.dsp.layout("preselect l"))
hl.bind("SUPER+SHIFT+j", hl.dsp.layout("preselect d"))
hl.bind("SUPER+SHIFT+k", hl.dsp.layout("preselect u"))
hl.bind("SUPER+SHIFT+l", hl.dsp.layout("preselect r"))

-- Set window mode
hl.bind("SUPER+i", hl.dsp.exec_raw("bash ~/.config/scripts/HyprSetTiled.sh"))
hl.bind("SUPER+o", hl.dsp.exec_raw("bash ~/.config/scripts/HyprSetFloating.sh"))
hl.bind("SUPER+p", hl.dsp.exec_raw("bash ~/.config/scripts/HyprSetFullscreen.sh true"))

-- Focus workspace
-- bind=SUPER,n,workspace,r~1
-- bind=SUPER,m,workspace,r~2
-- bind=SUPER,comma,workspace,r~3
-- bind=SUPER,period,workspace,r~4
-- bind=SUPER,slash,workspace,r~5
hl.bind("SUPER+n", function()
    smw.workspace(1)
end)
hl.bind("SUPER+m", function()
    smw.workspace(2)
end)
hl.bind("SUPER+comma", function()
    smw.workspace(3)
end)
hl.bind("SUPER+period", function()
    smw.workspace(4)
end)
hl.bind("SUPER+slash", function()
    smw.workspace(5)
end)

-- Move window to workspace
-- bind=SUPER ALT,n,movetoworkspacesilent,r~1
-- bind=SUPER ALT,m,movetoworkspacesilent,r~2
-- bind=SUPER ALT,comma,movetoworkspacesilent,r~3
-- bind=SUPER ALT,period,movetoworkspacesilent,r~4
-- bind=SUPER ALT,slash,movetoworkspacesilent,r~5
hl.bind("SUPER+ALT+n", function()
    smw.move_to_workspace_silent(1)
end)
hl.bind("SUPER+ALT+m", function()
    smw.move_to_workspace_silent(2)
end)
hl.bind("SUPER+ALT+comma", function()
    smw.move_to_workspace_silent(3)
end)
hl.bind("SUPER+ALT+period", function()
    smw.move_to_workspace_silent(4)
end)
hl.bind("SUPER+ALT+slash", function()
    smw.move_to_workspace_silent(5)
end)

-- Close focused window
hl.bind("SUPER+semicolon", hl.dsp.window.close())

-- Lock
hl.bind("SUPER+backspace", hl.dsp.exec_cmd("hyprlock"))

-- Application keybinds
hl.bind("SUPER+SHIFT+return", hl.dsp.exec_cmd("kitty"))
hl.bind("SUPER+SHIFT+b", hl.dsp.exec_cmd("firefox"))
hl.bind("SUPER+SHIFT+ALT+b", hl.dsp.exec_cmd("firefox"))
hl.bind("SUPER+SHIFT+g", hl.dsp.exec_cmd("pavucontrol"))
hl.bind("SUPER+SHIFT+v", hl.dsp.exec_cmd("pgrep rofi && pkill rofi || bwmenu"))

hl.bind("SUPER+Space", hl.dsp.exec_cmd("pgrep rofi && pkill rofi || rofi -show run"))
hl.bind("SUPER+b", hl.dsp.exec_cmd("bash /home/brumus/.config/scripts/ToggleEwwBar.sh"))
hl.bind(
    "SUPER+ALT+b",
    hl.dsp.exec_cmd("esh /home/brumus/.config/eww/esh_eww.yuck > /home/brumus/.config/eww/eww.yuck && eww reload")
)

hl.bind("SUPER+1", hl.dsp.exec_cmd("pactl set-sink-mute @DEFAULT_SINK@ toggle"))
hl.bind("SUPER+2", hl.dsp.exec_cmd("/home/brumus/.config/scripts/SetVolume.sh -5%"))
hl.bind("SUPER+3", hl.dsp.exec_cmd("/home/brumus/.config/scripts/SetVolume.sh +5%"))
hl.bind("SUPER+4", hl.dsp.exec_cmd("/home/brumus/.config/scripts/BrightnessControl.sh -"))
hl.bind("SUPER+5", hl.dsp.exec_cmd("/home/brumus/.config/scripts/BrightnessControl.sh +"))

hl.bind("XF86AudioMute", hl.dsp.exec_cmd("pactl set-sink-mute @DEFAULT_SINK@ toggle"))
hl.bind("XF86AudioLowerVolume", hl.dsp.exec_cmd("/home/brumus/.config/scripts/SetVolume.sh -5%"))
hl.bind("XF86AudioRaiseVolume", hl.dsp.exec_cmd("/home/brumus/.config/scripts/SetVolume.sh +5%"))
hl.bind("XF86MonBrightnessDown", hl.dsp.exec_cmd("/home/brumus/.config/scripts/BrightnessControl.sh -"))
hl.bind("XF86MonBrightnessUp", hl.dsp.exec_cmd("/home/brumus/.config/scripts/BrightnessControl.sh +"))

hl.bind("SUPER+6", hl.dsp.exec_cmd("makoctl dismiss"))
hl.bind("SUPER+7", hl.dsp.exec_cmd("makoctl dismiss --all"))

-- Plugin keybinds
-- bind=SUPER,Tab,hyprexpo:expo,toggle
