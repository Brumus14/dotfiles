hl.on("hyprland.start", function()
    hl.exec_cmd("mako")
    hl.exec_cmd("/usr/lib/polkit-kde-authentication-agent-1")
    hl.exec_cmd("dbus-update-activation-environment") --systemd WAYLAND_DISPLAY XDG_CURRENT_DESKTOP
    hl.exec_cmd("sway-audio-idle-inhibit")
    hl.exec_cmd("hyprpaper")
    hl.exec_cmd("hyprsunset")
    hl.exec_cmd("hypridle")
    hl.exec_cmd("hyprpm reload")
    hl.exec_cmd(
        "esh /home/brumus/.config/eww/esh_eww.yuck > /home/brumus/.config/eww/eww.yuck && eww daemon && bash /home/brumus/.config/scripts/ToggleEwwBar.sh"
    )
    hl.exec_cmd("bash /home/brumus/.config/scripts/HyprWorkspaceWatcher.sh")
    hl.exec_cmd("bash /home/brumus/.config/scripts/HyprMonitorWatcher.sh")
    hl.exec_cmd("bash /home/brumus/.config/scripts/VolumeLevelWatcher.sh")
    hl.exec_cmd("poweralertd")
end)
